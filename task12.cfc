<cfcomponent>
  <!---addUser() method--->
	<cffunction access="public" name="getUsers">
		<cfquery name="rs_getUsers">
			SELECT firstname,lastname FROM users;
		</cfquery>
			<cfset variables.fld_userNumber = form.fld_userNumber/>	
			<cfset variables.n = "#variables.fld_userNumber#" />
  			<cfset variables.firstName = rs_getUsers.firstname[#variables.n#]>

			<cfset variables.returnData = { 
				"rs_getUsers" = rs_getUsers,
				"firstName" = variables.firstName
			}>
		<cfreturn returnData />     		
	</cffunction>
</cfcomponent>
