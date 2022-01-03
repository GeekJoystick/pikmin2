#ifndef _SCREEN_OBJBASE_H
#define _SCREEN_OBJBASE_H

/*
        __vt__Q26Screen7ObjBase:
        .4byte 0
        .4byte 0
        .4byte __dt__Q26Screen7ObjBaseFv
        .4byte getChildCount__5CNodeFv
        .4byte 0
        .4byte 0
        .4byte "@24@__dt__Q26Screen7ObjBaseFv"
        .4byte update__Q26Screen7ObjBaseFv
        .4byte draw__Q26Screen7ObjBaseFR8Graphics
        .4byte start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
        .4byte end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
        .4byte setOwner__Q26Screen7ObjBaseFPQ26Screen9SceneBase
        .4byte getOwner__Q26Screen7ObjBaseCFv
        .4byte create__Q26Screen7ObjBaseFP10JKRArchive
        .4byte confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
        .4byte confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
        .4byte confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg
        .4byte doStart__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
        .4byte doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
        .4byte doCreate__Q26Screen7ObjBaseFP10JKRArchive
        .4byte doUpdateFadein__Q26Screen7ObjBaseFv
        .4byte doUpdateFadeinFinish__Q26Screen7ObjBaseFv
        .4byte doUpdate__Q26Screen7ObjBaseFv
        .4byte doUpdateFinish__Q26Screen7ObjBaseFv
        .4byte doUpdateFadeout__Q26Screen7ObjBaseFv
        .4byte doUpdateFadeoutFinish__Q26Screen7ObjBaseFv
        .4byte doDraw__Q26Screen7ObjBaseFR8Graphics
        .4byte doConfirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
        .4byte doConfirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
        .4byte doConfirmEndScene__Q26Screen7ObjBaseFRPQ26Screen11EndSceneArg
*/

struct CNode {
    virtual ~CNode();             // _00
    virtual void getChildCount(); // _04

    // _00 VTBL
};

namespace Screen {
struct ObjBase : public CNode {
    virtual ~ObjBase();                               // _00
    virtual void getChildCount();                     // _04
    virtual void _08() = 0;                           // _08
    virtual void _0C() = 0;                           // _0C
    virtual void @24 @__dt();                         // _10
    virtual void update();                            // _14
    virtual void draw(Graphics&);                     // _18
    virtual void start(const StartSceneArg*);         // _1C
    virtual void end(const EndSceneArg*);             // _20
    virtual void setOwner(SceneBase*);                // _24
    virtual void getOwner() const;                    // _28
    virtual void create(JKRArchive*);                 // _2C
    virtual void confirmSetScene(SetSceneArg&);       // _30
    virtual void confirmStartScene(StartSceneArg*);   // _34
    virtual void confirmEndScene(EndSceneArg*);       // _38
    virtual void doStart(const StartSceneArg*);       // _3C
    virtual void doEnd(const EndSceneArg*);           // _40
    virtual void doCreate(JKRArchive*);               // _44
    virtual void doUpdateFadein();                    // _48
    virtual void doUpdateFadeinFinish();              // _4C
    virtual void doUpdate();                          // _50
    virtual void doUpdateFinish();                    // _54
    virtual void doUpdateFadeout();                   // _58
    virtual void doUpdateFadeoutFinish();             // _5C
    virtual void doDraw(Graphics&);                   // _60
    virtual void doConfirmSetScene(SetSceneArg&);     // _64
    virtual void doConfirmStartScene(StartSceneArg*); // _68
    virtual void doConfirmEndScene(EndSceneArg*&);    // _6C

    // _00 VTBL
};
} // namespace Screen

#endif