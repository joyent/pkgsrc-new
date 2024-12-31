# $NetBSD: buildlink3.mk,v 1.17 2024/12/29 15:09:41 adam Exp $

BUILDLINK_TREE+=	libepubgen

.if !defined(LIBEPUBGEN_BUILDLINK3_MK)
LIBEPUBGEN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libepubgen+=	libepubgen>=0.1.0
BUILDLINK_ABI_DEPENDS.libepubgen+=	libepubgen>=0.1.1nb10
BUILDLINK_PKGSRCDIR.libepubgen?=	../../converters/libepubgen

.include "../../converters/librevenge/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.endif	# LIBEPUBGEN_BUILDLINK3_MK

BUILDLINK_TREE+=	-libepubgen
