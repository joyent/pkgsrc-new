# $NetBSD: buildlink3.mk,v 1.13 2024/12/26 22:20:18 adam Exp $

BUILDLINK_TREE+=	qt6-qtspeech

.if !defined(QT6_QTSPEECH_BUILDLINK3_MK)
QT6_QTSPEECH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt6-qtspeech+=	qt6-qtspeech>=6.4.1
BUILDLINK_ABI_DEPENDS.qt6-qtspeech+=	qt6-qtspeech>=6.8.1
BUILDLINK_PKGSRCDIR.qt6-qtspeech?=	../../audio/qt6-qtspeech

.include "../../lang/qt6-qtdeclarative/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# QT6_QTSPEECH_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt6-qtspeech
