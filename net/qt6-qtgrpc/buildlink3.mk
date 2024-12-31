# $NetBSD: buildlink3.mk,v 1.23 2024/12/26 22:20:16 adam Exp $

BUILDLINK_TREE+=	qt6-qtgrpc

.if !defined(QT6_QTGRPC_BUILDLINK3_MK)
QT6_QTGRPC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt6-qtgrpc+=	qt6-qtgrpc>=6.5.0
BUILDLINK_ABI_DEPENDS.qt6-qtgrpc+=	qt6-qtgrpc>=6.8.1
BUILDLINK_PKGSRCDIR.qt6-qtgrpc?=	../../net/qt6-qtgrpc

BUILDLINK_FILES.qt6-qtgrpc+=	libexec/qtgrpcgen
BUILDLINK_FILES.qt6-qtgrpc+=	libexec/qtprotobufgen

.include "../../net/grpc/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# QT6_QTGRPC_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt6-qtgrpc
