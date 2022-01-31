#ifndef _DVDSTATUS_H
#define _DVDSTATUS_H

#include "types.h"
#include "Game/MemoryCard/Mgr.h"

struct JUTFader;

namespace DvdError {
extern char* gMessage_eng[];
extern char* gMessage_fra[];
extern char* gMessage_ger[];
extern char* gMessage_ita[];
extern char* gMessage_jpn[];
extern char* gMessage_spa[];
}; // namespace DvdError

// Size: 0xC
struct DvdStatus {
	DvdStatus();

	void draw();
	bool isErrorOccured();
	void update();

	int _00;           // _00
	JUTFader* m_fader; // _04
	int _08;           // _08
};

#endif
