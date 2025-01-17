# $NetBSD: buildlink3.mk,v 1.4 2024/11/14 22:19:25 wiz Exp $

BUILDLINK_TREE+=	kf6-kdoctools

.if !defined(KF6_KDOCTOOLS_BUILDLINK3_MK)
KF6_KDOCTOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kf6-kdoctools+=	kf6-kdoctools>=6.2.0
BUILDLINK_ABI_DEPENDS.kf6-kdoctools?=	kf6-kdoctools>=6.2.0nb4
BUILDLINK_PKGSRCDIR.kf6-kdoctools?=	../../devel/kf6-kdoctools

BUILDLINK_FILES.kf6-kdoctools+=		share/kf6/kdoctools/customization/*.xsl
BUILDLINK_FILES.kf6-kdoctools+=		bin/checkXML6
BUILDLINK_FILES.kf6-kdoctools+=		bin/meinproc6

.include "../../textproc/libxslt/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/qt6-qtbase/buildlink3.mk"
.endif	# KF6_KDOCTOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-kf6-kdoctools
