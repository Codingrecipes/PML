#!/usr/bin/env python
# -*- coding: UTF-8 -*-

###
 #  Hamid Alipour
###


import sys
from pml import PML
from yahoo.search.factory import create_search
import cgitb; cgitb.enable()
import cgi

print "Content-Type: text/html"
print

pml = PML()
# pml.set_config("force_compile", True)

pml.set("page_title", "Web Search")

form = cgi.FieldStorage()

if form.has_key("q") and form["q"].value.strip() != "":
    query = form["q"].value
    app_id = "YahooDemo"
    srch = create_search("web", app_id, query=query, results=10)
    if srch is None:
        srch = create_search("Web", app_id, query=query, results=10)
     
    dom = srch.get_results()
    results = srch.parse_results(dom)
     
    pml.set("q", query)
    pml.set("results", results)
    pml.set("show_results", True)
    pml.set("page_title", "Search results for: " + query)
    
print pml.get_output("index.html")