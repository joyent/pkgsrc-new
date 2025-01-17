$NetBSD: patch-tools_gyp_pylib_gyp_generator_make.py,v 1.6 2024/10/22 08:30:42 adam Exp $

Use the system libtool on Darwin.
Add support for NetBSD and DragonFly.

--- tools/gyp/pylib/gyp/generator/make.py.orig	2024-10-16 14:36:59.000000000 +0000
+++ tools/gyp/pylib/gyp/generator/make.py
@@ -208,7 +208,7 @@ cmd_solink_module = $(LINK.$(TOOLSET)) -
 
 LINK_COMMANDS_MAC = """\
 quiet_cmd_alink = LIBTOOL-STATIC $@
-cmd_alink = rm -f $@ && %(python)s gyp-mac-tool filter-libtool libtool $(GYP_LIBTOOLFLAGS) -static -o $@ $(filter %%.o,$^)
+cmd_alink = rm -f $@ && %(python)s gyp-mac-tool filter-libtool /usr/bin/libtool $(GYP_LIBTOOLFLAGS) -static -o $@ $(filter %%.o,$^)
 
 quiet_cmd_link = LINK($(TOOLSET)) $@
 cmd_link = $(LINK.$(TOOLSET)) $(GYP_LDFLAGS) $(LDFLAGS.$(TOOLSET)) -o "$@" $(LD_INPUTS) $(LIBS)
@@ -2552,7 +2552,7 @@ def GenerateOutput(target_list, target_d
                 "flock_index": 2,
             }
         )
-    elif flavor == "freebsd":
+    elif flavor == "freebsd" or flavor == 'dragonflybsd' or flavor == 'netbsd':
         # Note: OpenBSD has sysutils/flock. lockf seems to be FreeBSD specific.
         header_params.update({"flock": "lockf"})
     elif flavor == "openbsd":
