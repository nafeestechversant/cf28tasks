<cfinvoke component="task16" method="generateMatrix" returnvariable="result"></cfinvoke>
<cfdump  var="#result#">

<cfscript>   
    writeOutput("<table><tbody>");   
    for( row in result ){        
        writeOutput("<tr>");
        for( column in row ){
            writeOutput("<td>#column#</td>");
        }        
        writeOutput("</tr>");
    }
    writeOutput("</tbody></table>");
</cfscript> 

