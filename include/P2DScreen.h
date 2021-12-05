#ifndef _P2DSCREEN_H
#define _P2DSCREEN_H

#include "JSystem/J2D/J2DPane.h"
#include "types.h"
#include "CNode.h"

struct Graphics;

namespace P2DScreen {
struct Node : public CNode {
	virtual ~Node();                               // _00
	virtual void update();                         // _08
	virtual void draw(Graphics&, J2DGrafContext&); // _0C
	virtual void doInit();                         // _10

	J2DPane* _18; // _18
};

struct CallBackNode : public Node {
	virtual ~CallBackNode(); // _00
	virtual void update();   // _08
};

// Size: 0x138
struct Mgr : public J2DScreen {
	Mgr();

	virtual ~Mgr();                                // _00
	virtual void update();                         // _28
	virtual void draw(Graphics&, J2DGrafContext&); // _94

	J2DPane* addCallBack(ulonglong, Node*);
	void addCallBackPane(J2DPane*, Node*);

	Node _118;  // _118
	u32 _130;   // _130
	u8 _134[4]; // _134
};

// Size: 0x148
struct Mgr_tuning : public Mgr {
	Mgr_tuning();

	virtual ~Mgr_tuning();                         // _00
	virtual void draw(Graphics&, J2DGrafContext&); // _94

	float m_widthMaybe;  // _138
	float m_heightMaybe; // _13C
	float m_someX;       // _140
	float m_someY;       // _144
};
} // namespace P2DScreen

#endif