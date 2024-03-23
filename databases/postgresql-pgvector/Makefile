# $NetBSD: Makefile,v 0.6.2 2024/03/22 22:17:34 bewell Exp $

DISTNAME=	pgvector-0.6.2
PKGNAME=	postgresql${PGSQL_VERSION}-${DISTNAME}
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_GITHUB:=pgvector/}
GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
GITHUB_PROJECT=	pgvector
WRKSRC=		${WRKDIR}/${DISTNAME}

MAINTAINER=	pkgsrc@brianewell.com
HOMEPAGE=	https://github.com/pgvector/pgvector
COMMENT=	Open-source vector similarity search for Postgres
LICENSE=	postgresql-license

DEPENDS+=	postgresql${PGSQL_VERSION}-server>=0:../../databases/postgresql${PGSQL_VERSION}-server
PGSQL_VERSIONS_ACCEPTED=	16 15 14 13 12

USE_TOOLS+=	gmake

#.include "../../devel/cmake/build.mk"
.include "../../mk/pgsql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
