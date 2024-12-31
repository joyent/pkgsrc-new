# $NetBSD: buildlink3.mk,v 1.9 2024/12/26 22:20:18 adam Exp $

BUILDLINK_TREE+=	qt6-qtsensors

.if !defined(QT6_QTSENSORS_BUILDLINK3_MK)
QT6_QTSENSORS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt6-qtsensors+=	qt6-qtsensors>=6.5.2
BUILDLINK_ABI_DEPENDS.qt6-qtsensors+=	qt6-qtsensors>=6.8.1
BUILDLINK_PKGSRCDIR.qt6-qtsensors?=	../../misc/qt6-qtsensors

.include "../../lang/qt6-qtdeclarative/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# QT6_QTSENSORS_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt6-qtsensors
