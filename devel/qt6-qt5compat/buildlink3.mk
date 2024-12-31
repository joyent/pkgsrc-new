# $NetBSD: buildlink3.mk,v 1.14 2024/12/26 22:20:14 adam Exp $

BUILDLINK_TREE+=	qt6-qt5compat

.if !defined(QT6_QT5COMPAT_BUILDLINK3_MK)
QT6_QT5COMPAT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt6-qt5compat+=	qt6-qt5compat>=6.4.1
BUILDLINK_ABI_DEPENDS.qt6-qt5compat+=	qt6-qt5compat>=6.8.1
BUILDLINK_PKGSRCDIR.qt6-qt5compat?=	../../devel/qt6-qt5compat

.include "../../lang/qt6-qtdeclarative/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# QT6_QT5COMPAT_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt6-qt5compat
