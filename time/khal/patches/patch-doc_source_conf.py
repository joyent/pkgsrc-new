$NetBSD: patch-doc_source_conf.py,v 1.2 2024/08/06 17:24:11 wiz Exp $

Avoid problem with sphinx 8.
https://github.com/pimutils/khal/issues/1356

--- doc/source/conf.py.orig	2024-08-06 17:18:55.985963360 +0000
+++ doc/source/conf.py
@@ -309,4 +309,4 @@ texinfo_documents = [
 
 
 # Example configuration for intersphinx: refer to the Python standard library.
-intersphinx_mapping = {'http://docs.python.org/': None}
+#intersphinx_mapping = {'http://docs.python.org/': None}
