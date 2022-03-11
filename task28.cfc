<cfcomponent>
   <cffunction name="getQueryTask28" access="public" output="false">		
		<cfquery>INSERT INTO task28 (username, pwd, role)
           VALUES ('#form.fld_userName#', '#form.fld_userPwd#', '#form.fld_userRole#')
		</cfquery>		
	</cffunction>
	
   <cffunction name="getLoginQuery" access="public" output="false" returntype="query">		
		<cfquery name="checkLogin">
			SELECT userid,username,pwd,role FROM task28 
				WHERE username = <cfqueryparam value="#form.fld_userName#" cfsqltype="cf_sql_varchar" /> AND pwd = <cfqueryparam value="#form.fld_userPwd#" cfsqltype="cf_sql_varchar" />
		</cfquery>
		<cfreturn checkLogin />
	</cffunction>	 
</cfcomponent>

