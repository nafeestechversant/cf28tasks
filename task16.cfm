<cfset faqImplicit = [1,2,3,4,5,6,7,8,9]>
<cfset cols = 3>
<cfset totalRows = 3>
<cfset output = 1>
<table width = "50%">                
    <cfloop from = "1" to = "#totalRows#" index = "thisRow">
    <tr>        
        <cfloop from = "1" to = "#cols#" index = "thisCol">        
        <td>            
            <cfif output lte #arrayLen(faqImplicit)#>
                <cfoutput>#faqImplicit[output]#</cfoutput>
            <cfelse>            
                <br>
            </cfif>            
            <cfset output = output + totalRows>
        </td>
        </cfloop>        
        <cfset output = thisRow + 1>
    </tr>
    </cfloop>
