.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_registItem_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_80480DB0:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
lbl_80480DBC:
	.asciz "registItem"
.balign 4
lbl_80480DC8:
	.asciz "-Barrel-"
.balign 4
lbl_80480DD4:
	.asciz "-Ujamushi-"
.balign 4
lbl_80480DE0:
	.asciz "-DownFloor-"
.balign 4
lbl_80480DEC:
	.asciz "-Treasure-"
.balign 4
lbl_80480DF8:
	.asciz "-PikiHead-"
.balign 4
lbl_80480E04:
	.asciz "-BigFountain-"
.balign 4
lbl_80480E14:
	.asciz "-Bridge-"
.balign 4
lbl_80480E20:
	.asciz "-DengekiGate-"
.balign 4
lbl_80480E30:
	.asciz "CreatureKillArg"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
govNAN___Q24Game5P2JST:
	.float 0.0
	.float 0.0
	.float 0.0

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
gu32NAN___Q24Game5P2JST:
	.skip 0x4
gfNAN___Q24Game5P2JST:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_80519990:
	.asciz "-Weed-"
.balign 4
lbl_80519998:
	.asciz "-Plant-"
.balign 4
lbl_805199A0:
	.asciz "-Rock-"
.balign 4
lbl_805199A8:
	.asciz "-Honey-"
.balign 4
lbl_805199B0:
	.asciz "-Onyon-"
.balign 4
lbl_805199B8:
	.asciz "-Hole-"
.balign 4
lbl_805199C0:
	.asciz "-Cave-"
.balign 4
lbl_805199C8:
	.asciz "-Gate-"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global createManagers__Q24Game7ItemMgrFUl
createManagers__Q24Game7ItemMgrFUl:
/* 801E4B98 001E1AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E4B9C 001E1ADC  7C 08 02 A6 */	mflr r0
/* 801E4BA0 001E1AE0  3C A0 80 48 */	lis r5, lbl_80480DB0@ha
/* 801E4BA4 001E1AE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E4BA8 001E1AE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E4BAC 001E1AEC  3B E5 0D B0 */	addi r31, r5, lbl_80480DB0@l
/* 801E4BB0 001E1AF0  38 A0 00 00 */	li r5, 0
/* 801E4BB4 001E1AF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E4BB8 001E1AF8  54 9E FF FE */	rlwinm r30, r4, 0x1f, 0x1f, 0x1f
/* 801E4BBC 001E1AFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E4BC0 001E1B00  54 9D 07 FE */	clrlwi r29, r4, 0x1f
/* 801E4BC4 001E1B04  38 9F 00 18 */	addi r4, r31, 0x18
/* 801E4BC8 001E1B08  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4BCC 001E1B0C  48 23 E7 91 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4BD0 001E1B10  38 60 00 90 */	li r3, 0x90
/* 801E4BD4 001E1B14  4B E3 F2 D1 */	bl __nw__FUl
/* 801E4BD8 001E1B18  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4BDC 001E1B1C  41 82 00 10 */	beq lbl_801E4BEC
/* 801E4BE0 001E1B20  38 80 00 01 */	li r4, 1
/* 801E4BE4 001E1B24  48 01 3A 05 */	bl __ct__Q34Game10ItemBarrel3MgrFv
/* 801E4BE8 001E1B28  7C 60 1B 78 */	mr r0, r3
lbl_801E4BEC:
/* 801E4BEC 001E1B2C  90 0D 94 F0 */	stw r0, mgr__Q24Game10ItemBarrel@sda21(r13)
/* 801E4BF0 001E1B30  7C 03 03 78 */	mr r3, r0
/* 801E4BF4 001E1B34  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4BF8 001E1B38  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4BFC 001E1B3C  7D 89 03 A6 */	mtctr r12
/* 801E4C00 001E1B40  4E 80 04 21 */	bctrl 
/* 801E4C04 001E1B44  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4C08 001E1B48  80 8D 94 F0 */	lwz r4, mgr__Q24Game10ItemBarrel@sda21(r13)
/* 801E4C0C 001E1B4C  4B FE 90 DD */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4C10 001E1B50  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4C14 001E1B54  38 9F 00 18 */	addi r4, r31, 0x18
/* 801E4C18 001E1B58  48 23 E7 4D */	bl heapStatusEnd__6SystemFPc
/* 801E4C1C 001E1B5C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4C20 001E1B60  38 9F 00 24 */	addi r4, r31, 0x24
/* 801E4C24 001E1B64  38 A0 00 00 */	li r5, 0
/* 801E4C28 001E1B68  48 23 E7 35 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4C2C 001E1B6C  38 60 06 5C */	li r3, 0x65c
/* 801E4C30 001E1B70  4B E3 F2 75 */	bl __nw__FUl
/* 801E4C34 001E1B74  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4C38 001E1B78  41 82 00 10 */	beq lbl_801E4C48
/* 801E4C3C 001E1B7C  38 80 00 01 */	li r4, 1
/* 801E4C40 001E1B80  48 02 4A B9 */	bl __ct__Q34Game12ItemUjamushi3MgrFv
/* 801E4C44 001E1B84  7C 60 1B 78 */	mr r0, r3
lbl_801E4C48:
/* 801E4C48 001E1B88  90 0D 95 40 */	stw r0, mgr__Q24Game12ItemUjamushi@sda21(r13)
/* 801E4C4C 001E1B8C  7C 03 03 78 */	mr r3, r0
/* 801E4C50 001E1B90  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4C54 001E1B94  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4C58 001E1B98  7D 89 03 A6 */	mtctr r12
/* 801E4C5C 001E1B9C  4E 80 04 21 */	bctrl 
/* 801E4C60 001E1BA0  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4C64 001E1BA4  80 8D 95 40 */	lwz r4, mgr__Q24Game12ItemUjamushi@sda21(r13)
/* 801E4C68 001E1BA8  4B FE 90 81 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4C6C 001E1BAC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4C70 001E1BB0  38 9F 00 24 */	addi r4, r31, 0x24
/* 801E4C74 001E1BB4  48 23 E6 F1 */	bl heapStatusEnd__6SystemFPc
/* 801E4C78 001E1BB8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4C7C 001E1BBC  38 82 B6 30 */	addi r4, r2, lbl_80519990@sda21
/* 801E4C80 001E1BC0  38 A0 00 00 */	li r5, 0
/* 801E4C84 001E1BC4  48 23 E6 D9 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4C88 001E1BC8  28 1E 00 00 */	cmplwi r30, 0
/* 801E4C8C 001E1BCC  41 82 00 48 */	beq lbl_801E4CD4
/* 801E4C90 001E1BD0  38 60 00 8C */	li r3, 0x8c
/* 801E4C94 001E1BD4  4B E3 F2 11 */	bl __nw__FUl
/* 801E4C98 001E1BD8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4C9C 001E1BDC  41 82 00 10 */	beq lbl_801E4CAC
/* 801E4CA0 001E1BE0  38 80 00 01 */	li r4, 1
/* 801E4CA4 001E1BE4  48 02 B2 11 */	bl __ct__Q34Game8ItemWeed3MgrFv
/* 801E4CA8 001E1BE8  7C 60 1B 78 */	mr r0, r3
lbl_801E4CAC:
/* 801E4CAC 001E1BEC  90 0D 95 60 */	stw r0, mgr__Q24Game8ItemWeed@sda21(r13)
/* 801E4CB0 001E1BF0  7C 03 03 78 */	mr r3, r0
/* 801E4CB4 001E1BF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4CB8 001E1BF8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4CBC 001E1BFC  7D 89 03 A6 */	mtctr r12
/* 801E4CC0 001E1C00  4E 80 04 21 */	bctrl 
/* 801E4CC4 001E1C04  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4CC8 001E1C08  80 8D 95 60 */	lwz r4, mgr__Q24Game8ItemWeed@sda21(r13)
/* 801E4CCC 001E1C0C  4B FE 90 1D */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4CD0 001E1C10  48 00 00 0C */	b lbl_801E4CDC
lbl_801E4CD4:
/* 801E4CD4 001E1C14  38 00 00 00 */	li r0, 0
/* 801E4CD8 001E1C18  90 0D 95 60 */	stw r0, mgr__Q24Game8ItemWeed@sda21(r13)
lbl_801E4CDC:
/* 801E4CDC 001E1C1C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4CE0 001E1C20  38 82 B6 30 */	addi r4, r2, lbl_80519990@sda21
/* 801E4CE4 001E1C24  48 23 E6 81 */	bl heapStatusEnd__6SystemFPc
/* 801E4CE8 001E1C28  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4CEC 001E1C2C  38 9F 00 30 */	addi r4, r31, 0x30
/* 801E4CF0 001E1C30  38 A0 00 00 */	li r5, 0
/* 801E4CF4 001E1C34  48 23 E6 69 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4CF8 001E1C38  38 60 00 90 */	li r3, 0x90
/* 801E4CFC 001E1C3C  4B E3 F1 A9 */	bl __nw__FUl
/* 801E4D00 001E1C40  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4D04 001E1C44  41 82 00 10 */	beq lbl_801E4D14
/* 801E4D08 001E1C48  38 80 00 01 */	li r4, 1
/* 801E4D0C 001E1C4C  48 01 15 9D */	bl __ct__Q34Game13ItemDownFloor3MgrFv
/* 801E4D10 001E1C50  7C 60 1B 78 */	mr r0, r3
lbl_801E4D14:
/* 801E4D14 001E1C54  90 0D 94 E0 */	stw r0, mgr__Q24Game13ItemDownFloor@sda21(r13)
/* 801E4D18 001E1C58  7C 03 03 78 */	mr r3, r0
/* 801E4D1C 001E1C5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4D20 001E1C60  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4D24 001E1C64  7D 89 03 A6 */	mtctr r12
/* 801E4D28 001E1C68  4E 80 04 21 */	bctrl 
/* 801E4D2C 001E1C6C  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4D30 001E1C70  80 8D 94 E0 */	lwz r4, mgr__Q24Game13ItemDownFloor@sda21(r13)
/* 801E4D34 001E1C74  4B FE 8F B5 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4D38 001E1C78  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4D3C 001E1C7C  38 9F 00 30 */	addi r4, r31, 0x30
/* 801E4D40 001E1C80  48 23 E6 25 */	bl heapStatusEnd__6SystemFPc
/* 801E4D44 001E1C84  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4D48 001E1C88  38 9F 00 3C */	addi r4, r31, 0x3c
/* 801E4D4C 001E1C8C  38 A0 00 00 */	li r5, 0
/* 801E4D50 001E1C90  48 23 E6 0D */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4D54 001E1C94  38 60 00 90 */	li r3, 0x90
/* 801E4D58 001E1C98  4B E3 F1 4D */	bl __nw__FUl
/* 801E4D5C 001E1C9C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4D60 001E1CA0  41 82 00 10 */	beq lbl_801E4D70
/* 801E4D64 001E1CA4  38 80 00 01 */	li r4, 1
/* 801E4D68 001E1CA8  48 00 F4 01 */	bl __ct__Q34Game12ItemTreasure3MgrFv
/* 801E4D6C 001E1CAC  7C 60 1B 78 */	mr r0, r3
lbl_801E4D70:
/* 801E4D70 001E1CB0  90 0D 94 D0 */	stw r0, mgr__Q24Game12ItemTreasure@sda21(r13)
/* 801E4D74 001E1CB4  7C 03 03 78 */	mr r3, r0
/* 801E4D78 001E1CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4D7C 001E1CBC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4D80 001E1CC0  7D 89 03 A6 */	mtctr r12
/* 801E4D84 001E1CC4  4E 80 04 21 */	bctrl 
/* 801E4D88 001E1CC8  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4D8C 001E1CCC  80 8D 94 D0 */	lwz r4, mgr__Q24Game12ItemTreasure@sda21(r13)
/* 801E4D90 001E1CD0  4B FE 8F 59 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4D94 001E1CD4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4D98 001E1CD8  38 9F 00 3C */	addi r4, r31, 0x3c
/* 801E4D9C 001E1CDC  48 23 E5 C9 */	bl heapStatusEnd__6SystemFPc
/* 801E4DA0 001E1CE0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4DA4 001E1CE4  38 9F 00 48 */	addi r4, r31, 0x48
/* 801E4DA8 001E1CE8  38 A0 00 00 */	li r5, 0
/* 801E4DAC 001E1CEC  48 23 E5 B1 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4DB0 001E1CF0  38 60 00 84 */	li r3, 0x84
/* 801E4DB4 001E1CF4  4B E3 F0 F1 */	bl __nw__FUl
/* 801E4DB8 001E1CF8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4DBC 001E1CFC  41 82 00 10 */	beq lbl_801E4DCC
/* 801E4DC0 001E1D00  38 80 00 01 */	li r4, 1
/* 801E4DC4 001E1D04  4B FF 58 A5 */	bl __ct__Q34Game12ItemPikihead3MgrFv
/* 801E4DC8 001E1D08  7C 60 1B 78 */	mr r0, r3
lbl_801E4DCC:
/* 801E4DCC 001E1D0C  90 0D 94 70 */	stw r0, mgr__Q24Game12ItemPikihead@sda21(r13)
/* 801E4DD0 001E1D10  7C 03 03 78 */	mr r3, r0
/* 801E4DD4 001E1D14  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4DD8 001E1D18  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4DDC 001E1D1C  7D 89 03 A6 */	mtctr r12
/* 801E4DE0 001E1D20  4E 80 04 21 */	bctrl 
/* 801E4DE4 001E1D24  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4DE8 001E1D28  80 8D 94 70 */	lwz r4, mgr__Q24Game12ItemPikihead@sda21(r13)
/* 801E4DEC 001E1D2C  4B FE 8E FD */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4DF0 001E1D30  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4DF4 001E1D34  38 9F 00 48 */	addi r4, r31, 0x48
/* 801E4DF8 001E1D38  48 23 E5 6D */	bl heapStatusEnd__6SystemFPc
/* 801E4DFC 001E1D3C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4E00 001E1D40  38 82 B6 38 */	addi r4, r2, lbl_80519998@sda21
/* 801E4E04 001E1D44  38 A0 00 00 */	li r5, 0
/* 801E4E08 001E1D48  48 23 E5 55 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4E0C 001E1D4C  28 1E 00 00 */	cmplwi r30, 0
/* 801E4E10 001E1D50  41 82 00 48 */	beq lbl_801E4E58
/* 801E4E14 001E1D54  38 60 00 94 */	li r3, 0x94
/* 801E4E18 001E1D58  4B E3 F0 8D */	bl __nw__FUl
/* 801E4E1C 001E1D5C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4E20 001E1D60  41 82 00 10 */	beq lbl_801E4E30
/* 801E4E24 001E1D64  38 80 00 01 */	li r4, 1
/* 801E4E28 001E1D68  4B FF AA D9 */	bl __ct__Q34Game9ItemPlant3MgrFv
/* 801E4E2C 001E1D6C  7C 60 1B 78 */	mr r0, r3
lbl_801E4E30:
/* 801E4E30 001E1D70  90 0D 94 78 */	stw r0, mgr__Q24Game9ItemPlant@sda21(r13)
/* 801E4E34 001E1D74  7C 03 03 78 */	mr r3, r0
/* 801E4E38 001E1D78  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4E3C 001E1D7C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4E40 001E1D80  7D 89 03 A6 */	mtctr r12
/* 801E4E44 001E1D84  4E 80 04 21 */	bctrl 
/* 801E4E48 001E1D88  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4E4C 001E1D8C  80 8D 94 78 */	lwz r4, mgr__Q24Game9ItemPlant@sda21(r13)
/* 801E4E50 001E1D90  4B FE 8E 99 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4E54 001E1D94  48 00 00 0C */	b lbl_801E4E60
lbl_801E4E58:
/* 801E4E58 001E1D98  38 00 00 00 */	li r0, 0
/* 801E4E5C 001E1D9C  90 0D 94 78 */	stw r0, mgr__Q24Game9ItemPlant@sda21(r13)
lbl_801E4E60:
/* 801E4E60 001E1DA0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4E64 001E1DA4  38 82 B6 38 */	addi r4, r2, lbl_80519998@sda21
/* 801E4E68 001E1DA8  48 23 E4 FD */	bl heapStatusEnd__6SystemFPc
/* 801E4E6C 001E1DAC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4E70 001E1DB0  38 82 B6 40 */	addi r4, r2, lbl_805199A0@sda21
/* 801E4E74 001E1DB4  38 A0 00 00 */	li r5, 0
/* 801E4E78 001E1DB8  48 23 E4 E5 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4E7C 001E1DBC  28 1E 00 00 */	cmplwi r30, 0
/* 801E4E80 001E1DC0  41 82 00 48 */	beq lbl_801E4EC8
/* 801E4E84 001E1DC4  38 60 00 90 */	li r3, 0x90
/* 801E4E88 001E1DC8  4B E3 F0 1D */	bl __nw__FUl
/* 801E4E8C 001E1DCC  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4E90 001E1DD0  41 82 00 10 */	beq lbl_801E4EA0
/* 801E4E94 001E1DD4  38 80 00 01 */	li r4, 1
/* 801E4E98 001E1DD8  4B FF DA 89 */	bl __ct__Q34Game8ItemRock3MgrFv
/* 801E4E9C 001E1DDC  7C 60 1B 78 */	mr r0, r3
lbl_801E4EA0:
/* 801E4EA0 001E1DE0  90 0D 94 80 */	stw r0, mgr__Q24Game8ItemRock@sda21(r13)
/* 801E4EA4 001E1DE4  7C 03 03 78 */	mr r3, r0
/* 801E4EA8 001E1DE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4EAC 001E1DEC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4EB0 001E1DF0  7D 89 03 A6 */	mtctr r12
/* 801E4EB4 001E1DF4  4E 80 04 21 */	bctrl 
/* 801E4EB8 001E1DF8  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4EBC 001E1DFC  80 8D 94 80 */	lwz r4, mgr__Q24Game8ItemRock@sda21(r13)
/* 801E4EC0 001E1E00  4B FE 8E 29 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4EC4 001E1E04  48 00 00 0C */	b lbl_801E4ED0
lbl_801E4EC8:
/* 801E4EC8 001E1E08  38 00 00 00 */	li r0, 0
/* 801E4ECC 001E1E0C  90 0D 94 80 */	stw r0, mgr__Q24Game8ItemRock@sda21(r13)
lbl_801E4ED0:
/* 801E4ED0 001E1E10  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4ED4 001E1E14  38 82 B6 40 */	addi r4, r2, lbl_805199A0@sda21
/* 801E4ED8 001E1E18  48 23 E4 8D */	bl heapStatusEnd__6SystemFPc
/* 801E4EDC 001E1E1C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4EE0 001E1E20  38 82 B6 48 */	addi r4, r2, lbl_805199A8@sda21
/* 801E4EE4 001E1E24  38 A0 00 00 */	li r5, 0
/* 801E4EE8 001E1E28  48 23 E4 75 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4EEC 001E1E2C  38 60 00 84 */	li r3, 0x84
/* 801E4EF0 001E1E30  4B E3 EF B5 */	bl __nw__FUl
/* 801E4EF4 001E1E34  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4EF8 001E1E38  41 82 00 10 */	beq lbl_801E4F08
/* 801E4EFC 001E1E3C  38 80 00 01 */	li r4, 1
/* 801E4F00 001E1E40  4B FE EE C9 */	bl __ct__Q34Game9ItemHoney3MgrFv
/* 801E4F04 001E1E44  7C 60 1B 78 */	mr r0, r3
lbl_801E4F08:
/* 801E4F08 001E1E48  90 0D 94 50 */	stw r0, mgr__Q24Game9ItemHoney@sda21(r13)
/* 801E4F0C 001E1E4C  7C 03 03 78 */	mr r3, r0
/* 801E4F10 001E1E50  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4F14 001E1E54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4F18 001E1E58  7D 89 03 A6 */	mtctr r12
/* 801E4F1C 001E1E5C  4E 80 04 21 */	bctrl 
/* 801E4F20 001E1E60  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4F24 001E1E64  80 8D 94 50 */	lwz r4, mgr__Q24Game9ItemHoney@sda21(r13)
/* 801E4F28 001E1E68  4B FE 8D C1 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4F2C 001E1E6C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4F30 001E1E70  38 82 B6 48 */	addi r4, r2, lbl_805199A8@sda21
/* 801E4F34 001E1E74  48 23 E4 31 */	bl heapStatusEnd__6SystemFPc
/* 801E4F38 001E1E78  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4F3C 001E1E7C  38 82 B6 50 */	addi r4, r2, lbl_805199B0@sda21
/* 801E4F40 001E1E80  38 A0 00 00 */	li r5, 0
/* 801E4F44 001E1E84  48 23 E4 19 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4F48 001E1E88  38 60 01 1C */	li r3, 0x11c
/* 801E4F4C 001E1E8C  4B E3 EF 59 */	bl __nw__FUl
/* 801E4F50 001E1E90  7C 64 1B 79 */	or. r4, r3, r3
/* 801E4F54 001E1E94  41 82 00 10 */	beq lbl_801E4F64
/* 801E4F58 001E1E98  38 80 00 01 */	li r4, 1
/* 801E4F5C 001E1E9C  4B F9 58 69 */	bl __ct__Q34Game9ItemOnyon3MgrFv
/* 801E4F60 001E1EA0  7C 64 1B 78 */	mr r4, r3
lbl_801E4F64:
/* 801E4F64 001E1EA4  90 8D 93 30 */	stw r4, mgr__Q24Game9ItemOnyon@sda21(r13)
/* 801E4F68 001E1EA8  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4F6C 001E1EAC  4B FE 8D 7D */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4F70 001E1EB0  80 6D 93 30 */	lwz r3, mgr__Q24Game9ItemOnyon@sda21(r13)
/* 801E4F74 001E1EB4  4B F9 6B 89 */	bl init__Q34Game9ItemOnyon3MgrFv
/* 801E4F78 001E1EB8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4F7C 001E1EBC  38 82 B6 50 */	addi r4, r2, lbl_805199B0@sda21
/* 801E4F80 001E1EC0  48 23 E3 E5 */	bl heapStatusEnd__6SystemFPc
/* 801E4F84 001E1EC4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4F88 001E1EC8  38 82 B6 58 */	addi r4, r2, lbl_805199B8@sda21
/* 801E4F8C 001E1ECC  38 A0 00 00 */	li r5, 0
/* 801E4F90 001E1ED0  48 23 E3 CD */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E4F94 001E1ED4  28 1D 00 00 */	cmplwi r29, 0
/* 801E4F98 001E1ED8  41 82 00 48 */	beq lbl_801E4FE0
/* 801E4F9C 001E1EDC  38 60 00 94 */	li r3, 0x94
/* 801E4FA0 001E1EE0  4B E3 EF 05 */	bl __nw__FUl
/* 801E4FA4 001E1EE4  7C 60 1B 79 */	or. r0, r3, r3
/* 801E4FA8 001E1EE8  41 82 00 10 */	beq lbl_801E4FB8
/* 801E4FAC 001E1EEC  38 80 00 01 */	li r4, 1
/* 801E4FB0 001E1EF0  4B FE D7 95 */	bl __ct__Q34Game8ItemHole3MgrFv
/* 801E4FB4 001E1EF4  7C 60 1B 78 */	mr r0, r3
lbl_801E4FB8:
/* 801E4FB8 001E1EF8  90 0D 94 48 */	stw r0, mgr__Q24Game8ItemHole@sda21(r13)
/* 801E4FBC 001E1EFC  7C 03 03 78 */	mr r3, r0
/* 801E4FC0 001E1F00  81 83 00 00 */	lwz r12, 0(r3)
/* 801E4FC4 001E1F04  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E4FC8 001E1F08  7D 89 03 A6 */	mtctr r12
/* 801E4FCC 001E1F0C  4E 80 04 21 */	bctrl 
/* 801E4FD0 001E1F10  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E4FD4 001E1F14  80 8D 94 48 */	lwz r4, mgr__Q24Game8ItemHole@sda21(r13)
/* 801E4FD8 001E1F18  4B FE 8D 11 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E4FDC 001E1F1C  48 00 00 0C */	b lbl_801E4FE8
lbl_801E4FE0:
/* 801E4FE0 001E1F20  38 00 00 00 */	li r0, 0
/* 801E4FE4 001E1F24  90 0D 94 48 */	stw r0, mgr__Q24Game8ItemHole@sda21(r13)
lbl_801E4FE8:
/* 801E4FE8 001E1F28  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4FEC 001E1F2C  38 82 B6 58 */	addi r4, r2, lbl_805199B8@sda21
/* 801E4FF0 001E1F30  48 23 E3 75 */	bl heapStatusEnd__6SystemFPc
/* 801E4FF4 001E1F34  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E4FF8 001E1F38  38 82 B6 60 */	addi r4, r2, lbl_805199C0@sda21
/* 801E4FFC 001E1F3C  38 A0 00 00 */	li r5, 0
/* 801E5000 001E1F40  48 23 E3 5D */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E5004 001E1F44  28 1E 00 00 */	cmplwi r30, 0
/* 801E5008 001E1F48  41 82 00 48 */	beq lbl_801E5050
/* 801E500C 001E1F4C  38 60 00 94 */	li r3, 0x94
/* 801E5010 001E1F50  4B E3 EE 95 */	bl __nw__FUl
/* 801E5014 001E1F54  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5018 001E1F58  41 82 00 10 */	beq lbl_801E5028
/* 801E501C 001E1F5C  38 80 00 01 */	li r4, 1
/* 801E5020 001E1F60  48 00 62 49 */	bl __ct__Q34Game8ItemCave3MgrFv
/* 801E5024 001E1F64  7C 60 1B 78 */	mr r0, r3
lbl_801E5028:
/* 801E5028 001E1F68  90 0D 94 A0 */	stw r0, mgr__Q24Game8ItemCave@sda21(r13)
/* 801E502C 001E1F6C  7C 03 03 78 */	mr r3, r0
/* 801E5030 001E1F70  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5034 001E1F74  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E5038 001E1F78  7D 89 03 A6 */	mtctr r12
/* 801E503C 001E1F7C  4E 80 04 21 */	bctrl 
/* 801E5040 001E1F80  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E5044 001E1F84  80 8D 94 A0 */	lwz r4, mgr__Q24Game8ItemCave@sda21(r13)
/* 801E5048 001E1F88  4B FE 8C A1 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E504C 001E1F8C  48 00 00 0C */	b lbl_801E5058
lbl_801E5050:
/* 801E5050 001E1F90  38 00 00 00 */	li r0, 0
/* 801E5054 001E1F94  90 0D 94 A0 */	stw r0, mgr__Q24Game8ItemCave@sda21(r13)
lbl_801E5058:
/* 801E5058 001E1F98  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E505C 001E1F9C  38 82 B6 60 */	addi r4, r2, lbl_805199C0@sda21
/* 801E5060 001E1FA0  48 23 E3 05 */	bl heapStatusEnd__6SystemFPc
/* 801E5064 001E1FA4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E5068 001E1FA8  38 9F 00 54 */	addi r4, r31, 0x54
/* 801E506C 001E1FAC  38 A0 00 00 */	li r5, 0
/* 801E5070 001E1FB0  48 23 E2 ED */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E5074 001E1FB4  28 1D 00 00 */	cmplwi r29, 0
/* 801E5078 001E1FB8  41 82 00 48 */	beq lbl_801E50C0
/* 801E507C 001E1FBC  38 60 00 94 */	li r3, 0x94
/* 801E5080 001E1FC0  4B E3 EE 25 */	bl __nw__FUl
/* 801E5084 001E1FC4  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5088 001E1FC8  41 82 00 10 */	beq lbl_801E5098
/* 801E508C 001E1FCC  38 80 00 01 */	li r4, 1
/* 801E5090 001E1FD0  48 00 84 99 */	bl __ct__Q34Game15ItemBigFountain3MgrFv
/* 801E5094 001E1FD4  7C 60 1B 78 */	mr r0, r3
lbl_801E5098:
/* 801E5098 001E1FD8  90 0D 94 B0 */	stw r0, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801E509C 001E1FDC  7C 03 03 78 */	mr r3, r0
/* 801E50A0 001E1FE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E50A4 001E1FE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E50A8 001E1FE8  7D 89 03 A6 */	mtctr r12
/* 801E50AC 001E1FEC  4E 80 04 21 */	bctrl 
/* 801E50B0 001E1FF0  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E50B4 001E1FF4  80 8D 94 B0 */	lwz r4, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801E50B8 001E1FF8  4B FE 8C 31 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E50BC 001E1FFC  48 00 00 0C */	b lbl_801E50C8
lbl_801E50C0:
/* 801E50C0 001E2000  38 00 00 00 */	li r0, 0
/* 801E50C4 001E2004  90 0D 94 B0 */	stw r0, mgr__Q24Game15ItemBigFountain@sda21(r13)
lbl_801E50C8:
/* 801E50C8 001E2008  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E50CC 001E200C  38 9F 00 54 */	addi r4, r31, 0x54
/* 801E50D0 001E2010  48 23 E2 95 */	bl heapStatusEnd__6SystemFPc
/* 801E50D4 001E2014  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E50D8 001E2018  38 9F 00 64 */	addi r4, r31, 0x64
/* 801E50DC 001E201C  38 A0 00 00 */	li r5, 0
/* 801E50E0 001E2020  48 23 E2 7D */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E50E4 001E2024  28 1E 00 00 */	cmplwi r30, 0
/* 801E50E8 001E2028  41 82 00 48 */	beq lbl_801E5130
/* 801E50EC 001E202C  38 60 00 98 */	li r3, 0x98
/* 801E50F0 001E2030  4B E3 ED B5 */	bl __nw__FUl
/* 801E50F4 001E2034  7C 60 1B 79 */	or. r0, r3, r3
/* 801E50F8 001E2038  41 82 00 10 */	beq lbl_801E5108
/* 801E50FC 001E203C  38 80 00 01 */	li r4, 1
/* 801E5100 001E2040  48 00 AF C9 */	bl __ct__Q34Game10ItemBridge3MgrFv
/* 801E5104 001E2044  7C 60 1B 78 */	mr r0, r3
lbl_801E5108:
/* 801E5108 001E2048  90 0D 94 B8 */	stw r0, mgr__Q24Game10ItemBridge@sda21(r13)
/* 801E510C 001E204C  7C 03 03 78 */	mr r3, r0
/* 801E5110 001E2050  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5114 001E2054  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E5118 001E2058  7D 89 03 A6 */	mtctr r12
/* 801E511C 001E205C  4E 80 04 21 */	bctrl 
/* 801E5120 001E2060  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E5124 001E2064  80 8D 94 B8 */	lwz r4, mgr__Q24Game10ItemBridge@sda21(r13)
/* 801E5128 001E2068  4B FE 8B C1 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E512C 001E206C  48 00 00 0C */	b lbl_801E5138
lbl_801E5130:
/* 801E5130 001E2070  38 00 00 00 */	li r0, 0
/* 801E5134 001E2074  90 0D 94 B8 */	stw r0, mgr__Q24Game10ItemBridge@sda21(r13)
lbl_801E5138:
/* 801E5138 001E2078  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E513C 001E207C  38 9F 00 64 */	addi r4, r31, 0x64
/* 801E5140 001E2080  48 23 E2 25 */	bl heapStatusEnd__6SystemFPc
/* 801E5144 001E2084  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E5148 001E2088  38 82 B6 68 */	addi r4, r2, lbl_805199C8@sda21
/* 801E514C 001E208C  38 A0 00 00 */	li r5, 0
/* 801E5150 001E2090  48 23 E2 0D */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E5154 001E2094  38 60 00 8C */	li r3, 0x8c
/* 801E5158 001E2098  4B E3 ED 4D */	bl __nw__FUl
/* 801E515C 001E209C  7C 64 1B 79 */	or. r4, r3, r3
/* 801E5160 001E20A0  41 82 00 10 */	beq lbl_801E5170
/* 801E5164 001E20A4  38 80 00 01 */	li r4, 1
/* 801E5168 001E20A8  4B FE 38 11 */	bl __ct__Q24Game11ItemGateMgrFv
/* 801E516C 001E20AC  7C 64 1B 78 */	mr r4, r3
lbl_801E5170:
/* 801E5170 001E20B0  90 8D 94 30 */	stw r4, itemGateMgr__4Game@sda21(r13)
/* 801E5174 001E20B4  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E5178 001E20B8  4B FE 8B 71 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E517C 001E20BC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E5180 001E20C0  38 82 B6 68 */	addi r4, r2, lbl_805199C8@sda21
/* 801E5184 001E20C4  48 23 E1 E1 */	bl heapStatusEnd__6SystemFPc
/* 801E5188 001E20C8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E518C 001E20CC  38 9F 00 70 */	addi r4, r31, 0x70
/* 801E5190 001E20D0  38 A0 00 00 */	li r5, 0
/* 801E5194 001E20D4  48 23 E1 C9 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801E5198 001E20D8  28 1E 00 00 */	cmplwi r30, 0
/* 801E519C 001E20DC  41 82 00 30 */	beq lbl_801E51CC
/* 801E51A0 001E20E0  38 60 00 A4 */	li r3, 0xa4
/* 801E51A4 001E20E4  4B E3 ED 01 */	bl __nw__FUl
/* 801E51A8 001E20E8  7C 64 1B 79 */	or. r4, r3, r3
/* 801E51AC 001E20EC  41 82 00 10 */	beq lbl_801E51BC
/* 801E51B0 001E20F0  38 80 00 01 */	li r4, 1
/* 801E51B4 001E20F4  4B FE 4B 31 */	bl __ct__Q34Game15ItemDengekiGate3MgrFv
/* 801E51B8 001E20F8  7C 64 1B 78 */	mr r4, r3
lbl_801E51BC:
/* 801E51BC 001E20FC  90 8D 94 34 */	stw r4, mgr__Q24Game15ItemDengekiGate@sda21(r13)
/* 801E51C0 001E2100  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E51C4 001E2104  4B FE 8B 25 */	bl addMgr__Q24Game7ItemMgrFPQ24Game11BaseItemMgr
/* 801E51C8 001E2108  48 00 00 0C */	b lbl_801E51D4
lbl_801E51CC:
/* 801E51CC 001E210C  38 00 00 00 */	li r0, 0
/* 801E51D0 001E2110  90 0D 94 34 */	stw r0, mgr__Q24Game15ItemDengekiGate@sda21(r13)
lbl_801E51D4:
/* 801E51D4 001E2114  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801E51D8 001E2118  38 9F 00 70 */	addi r4, r31, 0x70
/* 801E51DC 001E211C  48 23 E1 89 */	bl heapStatusEnd__6SystemFPc
/* 801E51E0 001E2120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E51E4 001E2124  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E51E8 001E2128  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E51EC 001E212C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E51F0 001E2130  7C 08 03 A6 */	mtlr r0
/* 801E51F4 001E2134  38 21 00 20 */	addi r1, r1, 0x20
/* 801E51F8 001E2138  4E 80 00 20 */	blr 

.global clearGlobalPointers__Q24Game7ItemMgrFv
clearGlobalPointers__Q24Game7ItemMgrFv:
/* 801E51FC 001E213C  38 00 00 00 */	li r0, 0
/* 801E5200 001E2140  90 0D 94 F0 */	stw r0, mgr__Q24Game10ItemBarrel@sda21(r13)
/* 801E5204 001E2144  90 0D 95 40 */	stw r0, mgr__Q24Game12ItemUjamushi@sda21(r13)
/* 801E5208 001E2148  90 0D 95 60 */	stw r0, mgr__Q24Game8ItemWeed@sda21(r13)
/* 801E520C 001E214C  90 0D 94 E0 */	stw r0, mgr__Q24Game13ItemDownFloor@sda21(r13)
/* 801E5210 001E2150  90 0D 94 D0 */	stw r0, mgr__Q24Game12ItemTreasure@sda21(r13)
/* 801E5214 001E2154  90 0D 94 70 */	stw r0, mgr__Q24Game12ItemPikihead@sda21(r13)
/* 801E5218 001E2158  90 0D 94 78 */	stw r0, mgr__Q24Game9ItemPlant@sda21(r13)
/* 801E521C 001E215C  90 0D 94 80 */	stw r0, mgr__Q24Game8ItemRock@sda21(r13)
/* 801E5220 001E2160  90 0D 94 50 */	stw r0, mgr__Q24Game9ItemHoney@sda21(r13)
/* 801E5224 001E2164  90 0D 93 30 */	stw r0, mgr__Q24Game9ItemOnyon@sda21(r13)
/* 801E5228 001E2168  90 0D 94 48 */	stw r0, mgr__Q24Game8ItemHole@sda21(r13)
/* 801E522C 001E216C  90 0D 94 A0 */	stw r0, mgr__Q24Game8ItemCave@sda21(r13)
/* 801E5230 001E2170  90 0D 94 B0 */	stw r0, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801E5234 001E2174  90 0D 94 B8 */	stw r0, mgr__Q24Game10ItemBridge@sda21(r13)
/* 801E5238 001E2178  90 0D 94 30 */	stw r0, itemGateMgr__4Game@sda21(r13)
/* 801E523C 001E217C  90 0D 94 34 */	stw r0, mgr__Q24Game15ItemDengekiGate@sda21(r13)
/* 801E5240 001E2180  4E 80 00 20 */	blr 

.global killAllExceptOnyonMgr__Q24Game7ItemMgrFv
killAllExceptOnyonMgr__Q24Game7ItemMgrFv:
/* 801E5244 001E2184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E5248 001E2188  7C 08 02 A6 */	mflr r0
/* 801E524C 001E218C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E5250 001E2190  80 6D 94 78 */	lwz r3, mgr__Q24Game9ItemPlant@sda21(r13)
/* 801E5254 001E2194  28 03 00 00 */	cmplwi r3, 0
/* 801E5258 001E2198  41 82 00 3C */	beq lbl_801E5294
/* 801E525C 001E219C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5260 001E21A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5264 001E21A4  7D 89 03 A6 */	mtctr r12
/* 801E5268 001E21A8  4E 80 04 21 */	bctrl 
/* 801E526C 001E21AC  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801E5270 001E21B0  28 03 00 00 */	cmplwi r3, 0
/* 801E5274 001E21B4  41 82 00 18 */	beq lbl_801E528C
/* 801E5278 001E21B8  80 8D 94 78 */	lwz r4, mgr__Q24Game9ItemPlant@sda21(r13)
/* 801E527C 001E21BC  4B FD 0D 39 */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 801E5280 001E21C0  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E5284 001E21C4  80 8D 94 78 */	lwz r4, mgr__Q24Game9ItemPlant@sda21(r13)
/* 801E5288 001E21C8  4B FD 0F 85 */	bl "delNode__33NodeObjectMgr<16GenericObjectMgr>FP16GenericObjectMgr"
lbl_801E528C:
/* 801E528C 001E21CC  38 00 00 00 */	li r0, 0
/* 801E5290 001E21D0  90 0D 94 78 */	stw r0, mgr__Q24Game9ItemPlant@sda21(r13)
lbl_801E5294:
/* 801E5294 001E21D4  80 6D 94 80 */	lwz r3, mgr__Q24Game8ItemRock@sda21(r13)
/* 801E5298 001E21D8  28 03 00 00 */	cmplwi r3, 0
/* 801E529C 001E21DC  41 82 00 3C */	beq lbl_801E52D8
/* 801E52A0 001E21E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E52A4 001E21E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E52A8 001E21E8  7D 89 03 A6 */	mtctr r12
/* 801E52AC 001E21EC  4E 80 04 21 */	bctrl 
/* 801E52B0 001E21F0  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801E52B4 001E21F4  28 03 00 00 */	cmplwi r3, 0
/* 801E52B8 001E21F8  41 82 00 18 */	beq lbl_801E52D0
/* 801E52BC 001E21FC  80 8D 94 80 */	lwz r4, mgr__Q24Game8ItemRock@sda21(r13)
/* 801E52C0 001E2200  4B FD 0C F5 */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 801E52C4 001E2204  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E52C8 001E2208  80 8D 94 80 */	lwz r4, mgr__Q24Game8ItemRock@sda21(r13)
/* 801E52CC 001E220C  4B FD 0F 41 */	bl "delNode__33NodeObjectMgr<16GenericObjectMgr>FP16GenericObjectMgr"
lbl_801E52D0:
/* 801E52D0 001E2210  38 00 00 00 */	li r0, 0
/* 801E52D4 001E2214  90 0D 94 80 */	stw r0, mgr__Q24Game8ItemRock@sda21(r13)
lbl_801E52D8:
/* 801E52D8 001E2218  80 6D 94 50 */	lwz r3, mgr__Q24Game9ItemHoney@sda21(r13)
/* 801E52DC 001E221C  28 03 00 00 */	cmplwi r3, 0
/* 801E52E0 001E2220  41 82 00 3C */	beq lbl_801E531C
/* 801E52E4 001E2224  81 83 00 00 */	lwz r12, 0(r3)
/* 801E52E8 001E2228  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E52EC 001E222C  7D 89 03 A6 */	mtctr r12
/* 801E52F0 001E2230  4E 80 04 21 */	bctrl 
/* 801E52F4 001E2234  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801E52F8 001E2238  28 03 00 00 */	cmplwi r3, 0
/* 801E52FC 001E223C  41 82 00 18 */	beq lbl_801E5314
/* 801E5300 001E2240  80 8D 94 50 */	lwz r4, mgr__Q24Game9ItemHoney@sda21(r13)
/* 801E5304 001E2244  4B FD 0C B1 */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 801E5308 001E2248  80 6D 94 38 */	lwz r3, itemMgr__4Game@sda21(r13)
/* 801E530C 001E224C  80 8D 94 50 */	lwz r4, mgr__Q24Game9ItemHoney@sda21(r13)
/* 801E5310 001E2250  4B FD 0E FD */	bl "delNode__33NodeObjectMgr<16GenericObjectMgr>FP16GenericObjectMgr"
lbl_801E5314:
/* 801E5314 001E2254  38 00 00 00 */	li r0, 0
/* 801E5318 001E2258  90 0D 94 50 */	stw r0, mgr__Q24Game9ItemHoney@sda21(r13)
lbl_801E531C:
/* 801E531C 001E225C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E5320 001E2260  7C 08 03 A6 */	mtlr r0
/* 801E5324 001E2264  38 21 00 10 */	addi r1, r1, 0x10
/* 801E5328 001E2268  4E 80 00 20 */	blr 

__sinit_registItem_cpp: # static initializer
/* 801E532C 001E226C  3C 80 80 51 */	lis r4, __float_nan@ha
/* 801E5330 001E2270  38 00 FF FF */	li r0, -1
/* 801E5334 001E2274  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 801E5338 001E2278  3C 60 80 4C */	lis r3, govNAN___Q24Game5P2JST@ha
/* 801E533C 001E227C  90 0D 94 88 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 801E5340 001E2280  D4 03 A3 60 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 801E5344 001E2284  D0 0D 94 8C */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 801E5348 001E2288  D0 03 00 04 */	stfs f0, 4(r3)
/* 801E534C 001E228C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E5350 001E2290  4E 80 00 20 */	blr 
