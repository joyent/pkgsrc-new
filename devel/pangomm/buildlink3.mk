# $NetBSD: buildlink3.mk,v 1.40 2024/12/27 08:19:36 wiz Exp $

BUILDLINK_TREE+=	pangomm

.if !defined(PANGOMM_BUILDLINK3_MK)
PANGOMM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pangomm+=	pangomm>=2.26.2
BUILDLINK_ABI_DEPENDS.pangomm+=	pangomm>=2.46.3nb5
BUILDLINK_PKGSRCDIR.pangomm?=	../../devel/pangomm

.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairomm/buildlink3.mk"
.endif # PANGOMM_BUILDLINK3_MK

BUILDLINK_TREE+=	-pangomm
