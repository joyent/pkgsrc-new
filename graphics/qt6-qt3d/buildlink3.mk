# $NetBSD: buildlink3.mk,v 1.14 2024/12/26 22:20:14 adam Exp $

BUILDLINK_TREE+=	qt6-qt3d

.if !defined(QT6_QT3D_BUILDLINK3_MK)
QT6_QT3D_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt6-qt3d+=	qt6-qt3d>=6.4.1
BUILDLINK_ABI_DEPENDS.qt6-qt3d+=	qt6-qt3d>=6.8.1
BUILDLINK_PKGSRCDIR.qt6-qt3d?=		../../graphics/qt6-qt3d

.include "../../lang/qt6-qtdeclarative/buildlink3.mk"
.include "../../multimedia/qt6-qtmultimedia/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# QT6_QT3D_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt6-qt3d
