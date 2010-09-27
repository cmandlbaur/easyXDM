﻿<%
    Response.ContentType = "application/json"
    Response.AddHeader("x-foo", "bar")
    Response.AddHeader("Access-Control-Allow-Origin", "http://xdm2")
    Response.AddHeader("Access-Control-Allow-Methods", "POST")

    Select Case Request.HttpMethod.ToUpper()
        Case "OPTIONS"
            
        Case "POST"
 %>
{
    "glossary": {
        "title": "example glossary",
        "GlossDiv": {
            "title": "S",
            "GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
                    "SortAs": "SGML",
                    "GlossTerm": "Standard Generalized Markup Language",
                    "Acronym": "SGML",
                    "Abbrev": "ISO 8879:1986",
                    "GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
                        "GlossSeeAlso": ["GML", "XML"]
                    },
                    "GlossSee": "markup"
                }
            }
        }
    }
}
<%
        Case "GET"
            
            
    End Select
    
    %>   