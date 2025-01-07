# $NetBSD: options.mk,v 1.24 2025/01/06 21:56:34 wiz Exp $

PKG_OPTIONS_VAR=		PKG_OPTIONS.mc
PKG_OPTIONS_REQUIRED_GROUPS=	screen
PKG_OPTIONS_GROUP.screen=	ncurses slang
PKG_SUPPORTED_OPTIONS=		mc-charset x11 sftp nls
PKG_SUGGESTED_OPTIONS=		mc-charset slang nls

.include "../../mk/bsd.options.mk"

### The charset option enables input/display support for various 8-bit
### codepages, chooseable at runtime.
PLIST_VARS+=		mc-charset
PRINT_PLIST_AWK+=	/mc[.]charsets$$/ { $$0 = "$${PLIST.mc-charset}" $$00}
.if !empty(PKG_OPTIONS:Mmc-charset)
CONFIGURE_ARGS+=	--enable-charset
PLIST.mc-charset=	yes
.include "../../converters/libiconv/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-charset
.endif

### X11 support allows better key handling (detection of the Alt, Ctrl,
### Shift modifiers) and mouse support.
.if !empty(PKG_OPTIONS:Mx11)
CONFIGURE_ARGS+=		--with-x
.include "../../x11/libXt/buildlink3.mk"
.else
CONFIGURE_ARGS+=		--without-x
.endif

### The Midnight Commander can use three different screen libraries to
### draw itself on the screen. SLang, ncurses, and a slim variant of
### SLang (the default), which is distributed with the Midnight Commander.
.if !empty(PKG_OPTIONS:Mslang)
CONFIGURE_ARGS+=	--with-screen=slang
.include "../../devel/libslang/buildlink3.mk"
.elif !empty(PKG_OPTIONS:Mncurses)
CONFIGURE_ARGS+=	--with-screen=ncurses
.include "../../devel/ncurses/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--with-screen=mcslang
.endif

.if !empty(PKG_OPTIONS:Msftp)
CONFIGURE_ARGS+=	--enable-vfs-sftp
.include "../../security/libssh2/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-vfs-sftp
.endif

PLIST_VARS+=	nls
PRINT_PLIST_AWK+=	/man\/..\/man1\// { $$0 = "$${PLIST.nls}" $$00}
PRINT_PLIST_AWK+=	/mc\/help\/mc.hlp[.].*$$/ { $$0 = "$${PLIST.nls}" $$00}
PRINT_PLIST_AWK+=	/mc\/hints\/mc.hint[.].*$$/ { $$0 = "$${PLIST.nls}" $$00}
.if !empty(PKG_OPTIONS:Mnls)
CONFIGURE_ARGS+= --enable-nls
PLIST.nls=	yes
USE_TOOLS+=	msgfmt msgmerge xgettext
.include "../../devel/gettext-lib/buildlink3.mk"
.else
CONFIGURE_ARGS+= --disable-nls
.endif
