
<cfscript>    
    //using classic for loop:
    initialArray=[1,4,7,2,5,8,3,6,9];
    row=[];
    myMatrix2DArray=[];
    arrayIndex=1;
    for( element in initialArray ){
        if( arrayIndex mod 3 == 0 ){
            //append last element;
            row.append( element );
            myMatrix2DArray.append( row );
            //reset row and return acc with 1;
            row=[];
            arrayIndex=1;
        }else{
            row.append( element );
            arrayIndex++;
        }
    } 
    writeOutput("<table><tbody>");   
    for( row in myMatrix2DArray  ){        
        writeOutput("<tr>");
        for( column in row ){
            writeOutput("<td>#column#</td>");
        }        
        writeOutput("</tr>");
    }
    writeOutput("</tbody></table>");
</cfscript> 

