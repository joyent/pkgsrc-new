$NetBSD: patch-src_openrct2_platform_Platform.Posix.cpp,v 1.2 2024/12/14 20:47:53 triaxx Exp $

Support NetBSD.

--- src/openrct2/platform/Platform.Posix.cpp.orig	2024-12-08 16:50:02.000000000 +0000
+++ src/openrct2/platform/Platform.Posix.cpp
@@ -7,7 +7,7 @@
  * OpenRCT2 is licensed under the GNU General Public License version 3.
  *****************************************************************************/
 
-#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__)) || defined(__FreeBSD__)
+#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__)) || defined(__FreeBSD__) || defined(__NetBSD__)
 
     #include "Platform.h"
 
