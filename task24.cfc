<cfcomponent output="false">
  <!---addUser() method--->
	<cffunction name="addUserInfo" access="public" output="false" returntype="void">
		<cfset variables.fld_userName = form.fld_userName/>	
		<cfset variables.fld_userEmail = form.fld_userEmail/>		
		<cfquery >
			INSERT INTO task24 (Name, email)
			VALUES
			(
				<cfqueryparam value="#variables.fld_userName#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#variables.fld_userEmail#" cfsqltype="cf_sql_varchar" />
			)
		</cfquery>
  </cffunction>
</cfcomponent>
