<cfcomponent>
	<cffunction access="public" name="task6">	 
		<cfset variables.returnData = {}>
		<cfset variables.value=StructInsert(variables.returnData, "#Form.fld_userKey#", "#Form.fld_userValue#")>
		<cfreturn variables.returnData />
	</cffunction>
</cfcomponent>	 	 	

