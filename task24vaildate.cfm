<cfif structKeyExists(form,'fld_userEmail')>
    <cfquery name="local.checkEmail">
        SELECT email FROM task24 WHERE email = '#form.fld_userEmail#'
    </cfquery>
    <!--- <cfoutput>SELECT email FROM userstask18 WHERE email = '#form.fld_userEmail#'</cfoutput> --->
    <cfif local.checkEmail.recordcount eq 1>
        <cfoutput>1</cfoutput> 
    <cfelse>
        <cfoutput>0</cfoutput>
    </cfif>
</cfif>

