# $NetBSD: buildlink3.mk,v 1.56 2024/12/29 14:53:13 adam Exp $

BUILDLINK_TREE+=	boost-build

.if !defined(BOOST_BUILD_BUILDLINK3_MK)
BOOST_BUILD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.boost-build+=	boost-build-1.87.*
BUILDLINK_ABI_DEPENDS.boost-build+=	boost-build>=1.87.0
BUILDLINK_DEPMETHOD.boost-build?=	build
BUILDLINK_PKGSRCDIR.boost-build?=	../../devel/boost-build
.endif # BOOST_BUILD_BUILDLINK3_MK

BUILDLINK_TREE+=	-boost-build
