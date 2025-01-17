# $NetBSD: buildlink3.mk,v 1.12 2024/04/06 08:06:27 wiz Exp $

BUILDLINK_TREE+=	SDL2_net

.if !defined(SDL2_NET_BUILDLINK3_MK)
SDL2_NET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SDL2_net+=	SDL2_net>=2.0.0nb2
BUILDLINK_ABI_DEPENDS.SDL2_net?=	SDL2_net>=2.2.0nb4
BUILDLINK_PKGSRCDIR.SDL2_net?=		../../net/SDL2_net

.include "../../devel/SDL2/buildlink3.mk"
.endif	# SDL2_NET_BUILDLINK3_MK

BUILDLINK_TREE+=	-SDL2_net
