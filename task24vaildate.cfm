<cfif structKeyExists(form,'fld_userEmail')>
<cfquery name="checkEmail">
SELECT email FROM userstask18 WHERE email = '#form.fld_userEmail#'
</cfquery>
<!--- <cfoutput>SELECT email FROM userstask18 WHERE email = '#form.fld_userEmail#'</cfoutput> --->
<cfif #checkEmail.recordcount# eq 1>
<cfoutput>1</cfoutput> 
<cfelse>
<cfoutput>0</cfoutput>
</cfif>
</cfif>

