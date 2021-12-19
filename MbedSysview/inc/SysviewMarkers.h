//
// Utility class for creating and using SystemView markers.
//

#ifndef MBEDSYSVIEW_SYSVIEWMARKERS_H
#define MBEDSYSVIEW_SYSVIEWMARKERS_H

#include <cstdint>

/**
 * @brief Each instance of this class represents a marker on the SystemView timeline.  Markers can be
 * used both to indicate both when a single event happens, or to mark out the time period when a given process is
 * running.
 *
 * Each marker is constructed with a name, and the MbedSysview code will handle sending these names to SystemView
 * and mapping them to the correct marker numbers.
 *
 * You must construct this class before MbedSysview::begin() is called, preferably as a global variable.
 * Otherwise, the marker may not show up in the trace view when used.
 */
class SysviewMarker
{
	/**
	 * @brief Name of the marker.
	 */
	const char* name;

	/**
	 * @brief ID number that is assigned to this marker.  Used to interface with SystemView functions.
	 * If this is zero, it means the marker has not (yet) been sent to SystemView.
	 */
	uint32_t markerID = 0;

	/**
	 * @brief Next marker in the linked list of markers, or nullptr if this is the last marker.
	 * Yeah linked lists are kinda basic, but we only need to iterate through it once, and we never need to
	 * random access it or delete elements.  Plus, it does not require any extra memory allocated on
	 * top of the SysviewMarker instances, no matter how big it gets.
	 */
	SysviewMarker * nextMarker;

	/**
	 * @brief Get a reference to the pointer to the head of the linked list of markers.
	 *
	 * The pointer is stored as a local static variable in this function, which is important
	 * so that it will be initialized correctly when accessed by global object constructors
	 * (if we just declared it as a global variable, it might not be initialized before other
	 * objects in other translation units).
	 */
	static SysviewMarker * & getMarkerListHead();

	/**
	 * @brief Register all the markers with the SystemView framework.
	 * Markers may only be registered from the system description callback, so this function
	 * is called from there by MbedSysview.
	 */
	static void registerMarkers();

	// Allow MbedSysview to call registerMarkers().
	friend class MbedSysview;

public:

	/**
	 * @brief Construst a SysviewMarker.  This MUST be called before MbedSysview::begin() to ensure
	 * the marker is defined when SystemView connects.  I suggest declaring markers as globals in source files
	 * that want to use them.
	 *
	 * @param[in] _name Name to display for this marker.
	 */
	explicit SysviewMarker(const char * _name);

	/**
	 * @brief This function has two uses.  If the marker describes a single event, this will insert a dot
	 * onto the timeline indicating when the event happens.  If the marker describes a time range when something
	 * is happening, this marks the start of that time range.  You will need to call markEnd() later to indicate
	 * the end of the time range.
	 */
	void markStart();

	/**
	 * @brief Mark the end of the time period of interest.  If called after markStart(), this will generate
	 * a closed range visible on the timeline.
	 */
	void markEnd();
};

#endif //MBEDSYSVIEW_SYSVIEWMARKERS_H
