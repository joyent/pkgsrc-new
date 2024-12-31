# $NetBSD: buildlink3.mk,v 1.10 2024/12/26 22:20:19 adam Exp $

BUILDLINK_TREE+=	qt6-qtvirtualkeyboard

.if !defined(QT6_QTVIRTUALKEYBOARD_BUILDLINK3_MK)
QT6_QTVIRTUALKEYBOARD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt6-qtvirtualkeyboard+=	qt6-qtvirtualkeyboard>=6.5.2
BUILDLINK_ABI_DEPENDS.qt6-qtvirtualkeyboard+=	qt6-qtvirtualkeyboard>=6.8.1
BUILDLINK_PKGSRCDIR.qt6-qtvirtualkeyboard?=	../../inputmethod/qt6-qtvirtualkeyboard

.include "../../graphics/qt6-qtsvg/buildlink3.mk"
.include "../../lang/qt6-qtdeclarative/buildlink3.mk"
.include "../../multimedia/qt6-qtmultimedia/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# QT6_QTVIRTUALKEYBOARD_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt6-qtvirtualkeyboard
