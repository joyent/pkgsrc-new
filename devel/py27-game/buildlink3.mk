# $NetBSD: buildlink3.mk,v 1.3 2025/01/06 21:49:04 ktnb Exp $

BUILDLINK_TREE+=	py-game

.if !defined(PY_GAME_BUILDLINK3_MK)
PY_GAME_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.py-game+=	${PYPKGPREFIX}-game>=1.9.1
BUILDLINK_ABI_DEPENDS.py-game+=	${PYPKGPREFIX}-game>=1.9.6nb5
BUILDLINK_PKGSRCDIR.py-game?=	../../devel/py27-game

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../multimedia/smpeg/buildlink3.mk"
.if ${OPSYS} != "Darwin"
.  include "../../x11/libX11/buildlink3.mk"
.endif
.endif # PY_GAME_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-game
