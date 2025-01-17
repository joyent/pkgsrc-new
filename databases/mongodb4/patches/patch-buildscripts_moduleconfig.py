$NetBSD: patch-buildscripts_moduleconfig.py,v 1.1 2024/08/17 15:51:43 tnn Exp $

Python 3.12 support. Fix similar to waf.

--- buildscripts/moduleconfig.py.orig	2024-08-17 15:28:15.030051822 +0000
+++ buildscripts/moduleconfig.py
@@ -27,7 +27,13 @@ MongoDB SConscript files do.
 __all__ = ('discover_modules', 'discover_module_directories', 'configure_modules',
            'register_module_test')  # pylint: disable=undefined-all-variable
 
-import imp
+import sys
+if sys.hexversion > 0x3040000:
+    import types
+    class imp(object):
+        new_module = lambda x: types.ModuleType(x)
+else:
+    import imp
 import inspect
 import os
 
