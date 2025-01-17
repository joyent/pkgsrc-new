# $NetBSD: buildlink3.mk,v 1.8 2024/11/14 22:18:59 wiz Exp $

BUILDLINK_TREE+=	hs-persistent-sqlite

.if !defined(HS_PERSISTENT_SQLITE_BUILDLINK3_MK)
HS_PERSISTENT_SQLITE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-persistent-sqlite+=	hs-persistent-sqlite>=2.13.3
BUILDLINK_ABI_DEPENDS.hs-persistent-sqlite+=	hs-persistent-sqlite>=2.13.3.0nb5
BUILDLINK_PKGSRCDIR.hs-persistent-sqlite?=	../../databases/hs-persistent-sqlite

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../converters/hs-aeson/buildlink3.mk"
.include "../../devel/hs-conduit/buildlink3.mk"
.include "../../devel/hs-microlens-th/buildlink3.mk"
.include "../../devel/hs-monad-logger/buildlink3.mk"
.include "../../devel/hs-persistent/buildlink3.mk"
.include "../../devel/hs-resource-pool/buildlink3.mk"
.include "../../devel/hs-resourcet/buildlink3.mk"
.include "../../devel/hs-unliftio-core/buildlink3.mk"
.include "../../devel/hs-unordered-containers/buildlink3.mk"
.endif	# HS_PERSISTENT_SQLITE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-persistent-sqlite
