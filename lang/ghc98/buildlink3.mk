# $NetBSD: buildlink3.mk,v 1.4 2025/01/08 10:17:27 pho Exp $

BUILDLINK_TREE+=	ghc

.if !defined(GHC_BUILDLINK3_MK)
GHC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ghc+=	ghc>=9.8.2
BUILDLINK_ABI_DEPENDS.ghc+=	ghc>=9.8.2nb1
BUILDLINK_PKGSRCDIR.ghc?=	../../lang/ghc98

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.endif	# GHC_BUILDLINK3_MK

BUILDLINK_TREE+=	-ghc
