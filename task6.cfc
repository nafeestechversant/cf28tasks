<cfcomponent>
	<cffunction access="public" name="task6">	 
		<cfset returnData = {}>
		<cfset value=StructInsert(returnData, "#Form.fld_userKey#", "#Form.fld_userValue#")>
		<cfreturn returnData />
	</cffunction>
</cfcomponent>	 	 	

