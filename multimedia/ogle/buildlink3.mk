# $NetBSD: buildlink3.mk,v 1.19 2024/11/14 22:21:00 wiz Exp $

BUILDLINK_TREE+=	ogle

.if !defined(OGLE_BUILDLINK3_MK)
OGLE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ogle+=	ogle>=0.9.2
BUILDLINK_ABI_DEPENDS.ogle+=	ogle>=0.9.2nb21
BUILDLINK_PKGSRCDIR.ogle?=	../../multimedia/ogle

.include "../../textproc/libxml2/buildlink3.mk"
.endif # OGLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ogle
