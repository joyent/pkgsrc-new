# $NetBSD: buildlink3.mk,v 1.19 2025/01/06 21:49:03 ktnb Exp $

BUILDLINK_TREE+=	SDL_ttf

.if !defined(SDL_TTF_BUILDLINK3_MK)
SDL_TTF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SDL_ttf+=	SDL_ttf>=2.0.3nb3
BUILDLINK_ABI_DEPENDS.SDL_ttf+=	SDL_ttf>=2.0.11nb7
BUILDLINK_PKGSRCDIR.SDL_ttf?=	../../devel/SDL_ttf

.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.endif # SDL_TTF_BUILDLINK3_MK

BUILDLINK_TREE+=	-SDL_ttf
