
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-tillich-correspondence-web="http://www.tei-c.org/pm/models/tillich-correspondence/web/module" at "../transform/tillich-correspondence-web-module.xql";
import module namespace pm-tillich-correspondence-print="http://www.tei-c.org/pm/models/tillich-correspondence/fo/module" at "../transform/tillich-correspondence-print-module.xql";
import module namespace pm-tillich-correspondence-latex="http://www.tei-c.org/pm/models/tillich-correspondence/latex/module" at "../transform/tillich-correspondence-latex-module.xql";
import module namespace pm-tillich-correspondence-epub="http://www.tei-c.org/pm/models/tillich-correspondence/epub/module" at "../transform/tillich-correspondence-epub-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "tillich-correspondence.odd" return pm-tillich-correspondence-web:transform($xml, $parameters)
    default return pm-tillich-correspondence-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "tillich-correspondence.odd" return pm-tillich-correspondence-print:transform($xml, $parameters)
    default return pm-tillich-correspondence-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "tillich-correspondence.odd" return pm-tillich-correspondence-latex:transform($xml, $parameters)
    default return pm-tillich-correspondence-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "tillich-correspondence.odd" return pm-tillich-correspondence-epub:transform($xml, $parameters)
    default return pm-tillich-correspondence-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    