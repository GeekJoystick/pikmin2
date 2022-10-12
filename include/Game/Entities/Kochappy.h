#ifndef _GAME_ENTITIES_KOCHAPPY_H
#define _GAME_ENTITIES_KOCHAPPY_H

#include "Game/EnemyMgrBase.h"
#include "Game/EnemyBase.h"
#include "Game/Entities/KochappyBase.h"

/**
 * --Header for Dwarf Red Bulborb (Kochappy)--
 */

namespace Game {
namespace Kochappy {
struct Obj : public KochappyBase::Obj {
	Obj();

	virtual ~Obj() { }                                 // _1BC (weak)
	virtual void changeMaterial();                     // _200
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _258 (weak)
	{
		return EnemyTypeID::EnemyID_Kochappy;
	}

	// _00 		= VTBL
	// _00-_2D4	= KochappyBase::Obj
};

struct Mgr : public KochappyBase::Mgr {
	Mgr(int, u8);

	//////////////// VTABLE
	virtual ~Mgr() { }                                 // _58 (weak)
	virtual void createObj(int);                       // _A0 (weak)
	virtual EnemyBase* getEnemy(int);                  // _A4 (weak)
	virtual void doAlloc();                            // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID() // _AC (weak)
	{
		return EnemyTypeID::EnemyID_Kochappy;
	}
	virtual void loadTexData();         // _D0
	virtual ResTIMG* getChangeTexture() // _E0 (weak)
	{
		return m_changeTexture;
	}
	//////////////// VTABLE END

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBase
	ResTIMG* m_changeTexture; // _44
};

} // namespace Kochappy
} // namespace Game

#endif