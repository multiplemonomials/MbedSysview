#include "SEGGER_SYSVIEW.h"
#include "SysviewMarkers.h"

SysviewMarker * & SysviewMarker::getMarkerListHead()
{
	static SysviewMarker * listHead = nullptr;
	return listHead;
}

void SysviewMarker::registerMarkers()
{
	// Next marker ID that will be assigned
	uint32_t nextMarkerID = 1;

	// Iterate through the list, assign unique IDs, and send to SystemView
	for(SysviewMarker * currMarker = getMarkerListHead(); currMarker != nullptr; currMarker = currMarker->nextMarker)
	{
		// Assign ID
		currMarker->markerID = nextMarkerID;
		nextMarkerID++;

		// Register ID and name
		SEGGER_SYSVIEW_NameMarker(currMarker->markerID, currMarker->name);
	}
}

SysviewMarker::SysviewMarker(const char *_name):
name(_name)
{
	// Insert this marker at the head of the list.
	// Inserting from the head is easier since we don't care about order and this way we don't
	// need to store a separate tail pointer.
	SysviewMarker * oldHead = getMarkerListHead();
	nextMarker = oldHead;
	getMarkerListHead() = this;
}

void SysviewMarker::markStart()
{
	if(markerID != 0)
	{
		SEGGER_SYSVIEW_MarkStart(markerID);
	}
}

void SysviewMarker::markEnd()
{
	if(markerID != 0)
	{
		SEGGER_SYSVIEW_MarkStop(markerID);
	}
}
