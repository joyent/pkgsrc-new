# $NetBSD: options.mk,v 1.33 2025/01/09 09:43:45 jperkin Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.weechat
# mk/curses will handle wide-curses
PKG_SUPPORTED_OPTIONS=	python lua wide-curses perl ruby
PKG_SUGGESTED_OPTIONS=	python lua wide-curses perl ruby

.include "../../mk/bsd.options.mk"
.include "../../mk/bsd.fast.prefs.mk"

PLIST_VARS+=		lua python perl ruby

.if !empty(PKG_OPTIONS:Mpython)
PYTHON_VERSIONS_INCOMPATIBLE=	27 313
.include "../../lang/python/extension.mk"
CMAKE_CONFIGURE_ARGS+=	-DENABLE_PYTHON=ON
PLIST.python=	yes
.else
CMAKE_CONFIGURE_ARGS+=	-DENABLE_PYTHON=OFF
.endif

.if !empty(PKG_OPTIONS:Mlua)
#LUA_VERSIONS_ACCEPTED=	53 52 51
.include "../../lang/lua/buildlink3.mk"
CMAKE_CONFIGURE_ARGS+=	-DENABLE_LUA=ON
PLIST.lua=	yes
.else
CMAKE_CONFIGURE_ARGS+=	-DENABLE_LUA=OFF
.endif

.if !empty(PKG_OPTIONS:Mperl)
.include "../../lang/perl5/buildlink3.mk"
CMAKE_CONFIGURE_ARGS+=	-DENABLE_PERL=ON
USE_TOOLS+=	perl
PLIST.perl=	yes
.else
CMAKE_CONFIGURE_ARGS+=	-DENABLE_PERL=OFF
.endif

.if !empty(PKG_OPTIONS:Mruby)
.include "../../lang/ruby/buildlink3.mk"
CMAKE_CONFIGURE_ARGS+=	-DENABLE_RUBY=ON
PLIST.ruby=	yes
BUILDLINK_INCDIRS.${RUBY_BASE}+=	${RUBY_INC}
BUILDLINK_INCDIRS.${RUBY_BASE}+=	${RUBY_ARCHINC}
.else
CMAKE_CONFIGURE_ARGS+=		-DENABLE_RUBY:BOOL=OFF
.endif
