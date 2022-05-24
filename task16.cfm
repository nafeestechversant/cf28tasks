<cfscript>       
    intArr=[1,4,7,2,5,8,3,6,9];
    row=[];
    matArr=[];
    indArr=1;
    for( element in intArr ){
        if( indArr mod 3 == 0 ){            
            row.append( element );
            matArr.append( row );           
            row=[];
            indArr=1;
        }else{
            row.append( element );
            indArr++;
        }
    } 
    writeOutput("<table><tbody>");   
    for( row in matArr  ){        
        writeOutput("<tr>");
        for( column in row ){
            writeOutput("<td>#column#</td>");
        }        
        writeOutput("</tr>");
    }
    writeOutput("</tbody></table>");
</cfscript> 

