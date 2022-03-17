<cfcomponent>
	<cffunction access="public" name="task6">	 
		<cfset variables.returnData = {}>
		<cfset variables.fld_userKey = form.fld_userKey/>	
		<cfset variables.fld_userValue = form.fld_userValue/>	
		<cfset variables.value=StructInsert(variables.returnData, "#variables.fld_userKey#", "#variables.fld_userValue#")>
		<cfreturn variables.returnData />
	</cffunction>
</cfcomponent>	 	 	

