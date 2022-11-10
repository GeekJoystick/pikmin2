#ifndef _OG_SCREEN_DISPMEMBER_H
#define _OG_SCREEN_DISPMEMBER_H

#include "Screen/Enums.h"
#include "og/Screen/Data.h"
#include "IDelegate.h"
#include "id32.h"
#include "Rect.h"

struct Controller;

namespace Game {
struct BaseGameSection;
} // namespace Game

namespace og {
namespace Screen {

// size 0x8
struct DispMemberBase {
	inline DispMemberBase()
	    : m_subMember(nullptr)
	{
	}

	virtual u32 getSize()     = 0;    // _08
	virtual u32 getOwnerID()  = 0;    // _0C
	virtual u64 getMemberID() = 0;    // _10
	virtual void doSetSubMemberAll(); // _14 (weak)

	bool isID(u32, u64);
	void getMemberName(char*);
	bool setSubMember(DispMemberBase*);
	DispMemberBase* getSubMember(u32, u64);
	void setSubMemberAll();

	// inline void getOwnerName(char* outName) {
	// 	TagToName(getOwnerID(), outName);
	// }
	// inline void dump() {
	// 	char owner[12];
	// 	char member[12];
	// 	getOwnerName(owner);
	// 	getMemberName(member);
	// }

	// _00 = VTBL
	DispMemberBase* m_subMember; // _04
};

// size 0x24
struct DispMemberAnaDemo : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberAnaDemo); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }              // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_ANA_DEMO; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	u32 m_caveOtakaraNum; // _08
	u32 m_caveOtakaraMax; // _0C
	u32 _10;              // _10
	u32 _14;              // _14
	u32 m_caveID;         // _18
	u8 _1C;               // _1C
	u8 _1D;               // _1D
	u8 _1E;               // _1E
	u8 _1F;               // _1F
	u32 _20;              // _20, unknown
};

// size 0x10
struct DispMemberDayEndCount : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberDayEndCount); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                  // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_DAY_END_COUNT; }      // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	f32 _08; // _08
	f32 _0C; // _0C
};

// size 0x10
struct DispMemberHurryUp : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberHurryUp); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }              // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_HURRY_UP; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	f32 _08; // _08
	f32 _0C; // _0C
};

// size 0x64
struct DispMemberCave : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberCave); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }           // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_CAVE; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DataGame m_dataGame;     // _08
	DataNavi m_dataNavi[2];  // _24
	f32 _54;                 // _54
	int _58;                 // _58
	u8 _5C;                  // _5C
	u8 _5D;                  // _5D
	u8 _5E;                  // _5E
	u8 _5F;                  // _5F
	u8 _60;                  // _60
	u8 _61;                  // _61
	bool m_isBitterUnlocked; // _62, have made first bitter spray from berries
	bool m_isSpicyUnlocked;  // _63, have made first spicy spray from berries
};

// size 0x28
struct DispMemberCaveMore : public DispMemberAnaDemo {

	virtual u32 getSize() { return sizeof(DispMemberCaveMore); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }               // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_CAVE_MORE; }       // _10 (weak)

	// _00     = VTBL
	// _00-_24 = DispMemberAnaDemo
	u8 _24; // _24
	u8 _25; // _25
};

// size 0x78
struct DispMemberChallenge1P : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberChallenge1P); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                  // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_CHALLENGE_1P; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DataGame m_dataGame;                 // _08
	DataNavi m_dataNavi[2];              // _24
	u32 _54;                             // _54
	u8 _58;                              // _58
	f32 _5C;                             // _5C
	f32 _60;                             // _60
	u32 _64;                             // _64
	DispMemberDayEndCount m_dayEndCount; // _68
};

// size 0x78
struct DispMemberChallenge2P : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberChallenge2P); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                  // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_CHALLENGE_2P; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DataGame m_dataGame;                 // _08
	DataNavi m_dataNavi[2];              // _24
	u32 _54;                             // _54
	u8 _58;                              // _58
	f32 _5C;                             // _5C
	f32 _60;                             // _60
	u32 _64;                             // _64
	DispMemberDayEndCount m_dayEndCount; // _68
};

// size 0x38
struct DispMemberContena : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberContena); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }              // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_CONTENA; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int _08;      // _08
	u32 _0C;      // _0C
	int _10;      // _10
	u32 _14;      // _14
	int _18;      // _18
	int _1C;      // _1C
	u32 _20;      // _20
	int _24;      // _24
	u32 _28;      // _28
	u8 _2C;       // _2C
	int _30;      // _30
	s16 m_result; // _34
};

// size 0x10
struct DispMemberCourseName : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberCourseName); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                 // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_COURSE_NAME; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int m_courseIndex; // _08
	u8 _0C;            // _0C
	u8 _0D;            // _0D
};

// size 0x8
struct DispMemberDummy : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberDummy); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }            // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_DUMMY; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
};

// size 0xC
struct DispMemberFinalMessage : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberFinalMessage); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                   // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_FINAL_MSG; }           // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int m_finalState; // _08
};

// size 0x14
struct DispMemberFloor : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberFloor); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }            // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_FLOOR; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int _08;      // _08
	u32 m_caveID; // _0C
	u8 _10;       // _10
	u8 _11;       // _11
	u8 _12;       // _12
};

// size 0x88
struct DispMemberGround : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberGround); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }             // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_GROUND; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DataGame m_dataGame;                 // _08
	DataNavi m_dataNavi[2];              // _24
	f32 _54;                             // _54
	int _58;                             // _58
	u8 _5C;                              // _5C
	u8 _5D;                              // _5D
	u8 _5E;                              // _5E
	bool _5F;                            // _5F
	bool _60;                            // _60
	u8 _61;                              // _61
	u8 _62;                              // _62
	bool _63;                            // _63
	bool _64;                            // _64
	DispMemberDayEndCount m_dayEndCount; // _68
	DispMemberHurryUp m_hurryUp;         // _78
};

// size 0x28
struct DispMemberKanketuMenu : public DispMemberAnaDemo {

	virtual u32 getSize() { return sizeof(DispMemberKanketuMenu); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                  // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_KANKETU_MENU; }       // _10 (weak)

	// _00     = VTBL
	// _00-_24 = DispMemberAnaDemo
	u8 _24; // _24
	u8 _25; // _25
	u8 _26; // _26
};

// size 0x40
struct DispMemberKantei : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberKantei); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }             // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_KANTEI; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int m_pelletValue;                                    // _08
	u32 _0C;                                              // _0C
	Delegate1<Game::BaseGameSection, Rectf&>* m_delegate; // _10
	u8 _14[0x4];                                          // _14, unknown
	u64 m_pelletMessageID;                                // _18
	u32 m_pelletOffset;                                   // _1C
	int _24;                                              // _24
	u8 _28;                                               // _28
	u8 _29;                                               // _29
	Controller* m_secondaryController;                    // _2C
	u8 _30;                                               // _30
	u32 _34;                                              // _34, unknown
	u8 _38;                                               // _38
	u8 _39;                                               // _39
	u8 _3A[0x2];                                          // _3A, unknown, possibly padding
	u8 _3C[0x4];                                          // _3C, unknown
};

// size 0xC
struct DispMemberSave : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSave); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }           // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_SAVE; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	u8 _08; // _08
};

// size 0x8
struct DispMemberSMenuCont : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuCont); }    // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                   // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_CONTROLS; } // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
};

// size 0x28
struct DispMemberSMenuItem : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuItem); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_ITEM; }  // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int m_spicySprayCount;              // _08
	int m_spicyBerryCount;              // _0C
	int m_bitterSprayCount;             // _10
	int m_bitterBerryCount;             // _14
	bool m_explorationKitInventory[12]; // _18
	bool m_isBitterUnlocked;            // _24, have made first bitter spray from berries
	bool m_isSpicyUnlocked;             // _25, have made first spicy spray from berries
};

// size 0x4C
struct DispMemberSMenuMap : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuMap); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }               // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_MAP; }  // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DataMap m_dataMap;      // _08
	int m_courseIndex;      // _3C
	u32 m_currentCave;      // _40
	bool m_unlockedReds;    // _44
	bool m_unlockedYellows; // _45
	bool m_unlockedBlues;   // _46
	bool m_unlockedWhites;  // _47
	bool m_unlockedPurples; // _48
	u8 _49;                 // _49
	bool _4A;               // _4A
};

// size 0x14
struct DispMemberSMenuPause : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuPause); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                 // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_PAUSE; }  // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	uint m_debtRemaining; // _08
	uint m_pokoCount;     // _0C
	int _10;              // _10
};

// size 0x18
struct DispMemberSMenuPauseDoukutu : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuPauseDoukutu); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                        // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_PAUSE_DOUKUTU; } // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	u32 _08;          // _08
	uint m_pokoCount; // _0C
	u8 _10;           // _10
	u8 _11;           // _11
	int _14;          // _14
};

// size 0xC
struct DispMemberSMenuPauseVS : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuPauseVS); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                   // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_PAUSE_VS; } // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int _08; // _08, state maybe
};

// size 0xC4
struct DispMemberSMenuAll : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSMenuAll); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }               // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_START_MENU_ALL; }  // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DispMemberSMenuPause m_sMenuPause;               // _08
	DispMemberSMenuPauseDoukutu m_sMenuPauseDoukutu; // _1C
	DispMemberSMenuItem m_sMenuItem;                 // _34
	DispMemberSMenuMap m_sMenuMap;                   // _5C
	DispMemberSMenuPauseVS m_sMenuVS;                // _A8
	DispMemberSMenuCont m_sMenuCont;                 // _B4
	int _BC;                                         // _BC
	bool m_isDay1;                                   // _C0
};

// size 0x10
struct DispMemberSpecialItem : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberSpecialItem); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                  // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_SPECIAL_ITEM; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	Delegate1<Game::BaseGameSection, Rectf&>* m_delegate; // _08
	u8 _0C;                                               // _0C
};

// size 0x10
struct DispMemberUfoMenu : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberUfoMenu); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }              // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_UFO_MENU; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int _08; // _08
	u8 _0C;  // _0C
};

// size 0x8C
struct DispMemberUfoGroup : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberUfoGroup); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }               // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_UFO_GROUP; }       // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DispMemberUfoMenu m_ufoMenu; // _08
	DispMemberContena _18;       // _18
	DispMemberContena _50;       // _50
	u8 _88;                      // _88
	u8 _89;                      // _89
	u8 _8A;                      // _8A
};

// size 0x74
struct DispMemberVs : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberVs); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }         // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_VS; }        // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	DataGame m_dataGame;    // _08
	u32 _24;                // _24, unknown
	DataNavi m_dataNavi[2]; // _28
	uint m_redPikminCount;  // _58
	uint m_bluePikminCount; // _5C
	int m_mode;             // _60
	u32 _64;                // _64, unknown
	u8 _68;                 // _68
	u8 _69;                 // _69
	u8 _6A;                 // _6A
	u8 _6B;                 // _6B
	f32 _6C;                // _6C
	f32 _70;                // _70
};

// size 0x28
struct DispMemberWorldMapInfoWin0 : public DispMemberBase {
	inline DispMemberWorldMapInfoWin0()
	{
		_08 = 0;
		_10 = '4710_00';
		_18 = '4711_00';
		_20 = 0xB4;
		_21 = 0;
	}

	virtual u32 getSize() { return sizeof(DispMemberWorldMapInfoWin0); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                       // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_WORLD_MAP_INFO_WINDOW_0; } // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int _08;     // _08, state or result
	u8 _0C[0x4]; // _0C, unknown
	u64 _10;     // _10
	u64 _18;     // _18
	u8 _20;      // _20
	u8 _21;      // _21
	u8 _22[0x2]; // _22, possibly padding
	u8 _24[0x4]; // _24, unknown
};

// size 0x10
struct DispMemberWorldMapInfoWin1 : public DispMemberBase {

	virtual u32 getSize() { return sizeof(DispMemberWorldMapInfoWin1); } // _08 (weak)
	virtual u32 getOwnerID() { return OWNER_OGA; }                       // _0C (weak)
	virtual u64 getMemberID() { return MEMBER_WORLD_MAP_INFO_WINDOW_1; } // _10 (weak)

	// _00     = VTBL
	// _00-_08 = DispMemberBase
	int _08; // _08, state or result
	u8 _0C;  // _0C
};

} // namespace Screen
} // namespace og

#endif