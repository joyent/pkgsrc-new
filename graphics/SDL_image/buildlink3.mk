# $NetBSD: buildlink3.mk,v 1.27 2025/01/06 21:49:19 ktnb Exp $

BUILDLINK_TREE+=	SDL_image

.if !defined(SDL_IMAGE_BUILDLINK3_MK)
SDL_IMAGE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SDL_image+=	SDL_image>=1.2.3nb1
BUILDLINK_ABI_DEPENDS.SDL_image+=	SDL_image>=1.2.12nb12
BUILDLINK_PKGSRCDIR.SDL_image?=		../../graphics/SDL_image
BUILDLINK_INCDIRS.SDL_image?=		include/SDL

.include "../../devel/SDL/buildlink3.mk"
.endif # SDL_IMAGE_BUILDLINK3_MK

BUILDLINK_TREE+=	-SDL_image
