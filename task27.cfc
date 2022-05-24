<cfcomponent>
   <cffunction name="getQueryTask27" access="public" output="false" returntype="query">		
		<cfquery name="local.checkLogin">
			SELECT ID,UserName,UserPassword,FirstName,Surname FROM task27 
				WHERE UserName = <cfqueryparam value="#form.fld_userName#" cfsqltype="cf_sql_varchar" /> AND UserPassword = <cfqueryparam value="#form.fld_userPwd#" cfsqltype="cf_sql_varchar" />
		</cfquery>
		<cfreturn local.checkLogin />
	</cffunction>
</cfcomponent>
