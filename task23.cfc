<cfcomponent output="false">
  <!---addUser() method--->
	<cffunction name="addUser" access="public" output="false" returntype="void">
		
		<cfargument name="userPosition" type="string" required="true" />
		<cfargument name="userRelocate" type="string" required="true" />
		<cfargument name="userStart" type="string" required="true" />
		<cfargument name="userWebsite" type="string" required="false" />
		<cfargument name="userDoc" type="string" required="false" />
		<cfargument name="userSalary" type="numeric" required="false" />
		<cfargument name="userFirstName" type="string" required="true" />
		<cfargument name="userLastName" type="string" required="true" />
		<cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPhone" type="numeric" required="true" />

		<cfquery>
			INSERT INTO userstask23 (position, relocate, start_date, website, doc_name, salary, firstname, lastname, email_id, phone)
			VALUES
			(
				<cfqueryparam value="#form.Field17#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.Field19#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.fld_userdob#" cfsqltype="CF_SQL_DATE" />,
				<cfqueryparam value="#form.Field14#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.Field12#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.Field16#" cfsqltype="CF_SQL_DECIMAL" />,
				<cfqueryparam value="#form.Field22#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.Field23#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.Field13#" cfsqltype="cf_sql_varchar" />,
				<cfqueryparam value="#form.Field25#" cfsqltype="cf_sql_integer" />
			)
		</cfquery>
  </cffunction>
</cfcomponent>
