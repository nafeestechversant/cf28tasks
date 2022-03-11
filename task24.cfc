<cfcomponent output="false">
  <!---addUser() method--->
	<cffunction name="addUserInfo" access="public" output="false" returntype="void">	
		<cfquery >
			INSERT INTO userstask18 (Name, email)
			VALUES
			(
				<cfqueryparam value="#form.fld_userName#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.fld_userEmail#" cfsqltype="cf_sql_varchar" />
			)
		</cfquery>
  </cffunction>
</cfcomponent>
