<cfcomponent>
   <cffunction name="getQueryTask28" access="public" output="false">		
		<cfquery>INSERT INTO task28 (username, pwd, role)
           VALUES ('#form.fld_userName#', '#hash(form.fld_userPwd,'SHA')#', '#form.fld_userRole#')
		</cfquery>		
	</cffunction>
	
   <cffunction name="getLoginQuery" access="public" output="false" returntype="query">		
		<cfquery name="checkLogin">
			SELECT userid,username,pwd,role FROM task28 
				WHERE username = <cfqueryparam value="#form.fld_userName#" cfsqltype="cf_sql_varchar" /> AND pwd = <cfqueryparam value="#hash(form.fld_userPwd,'SHA')#" cfsqltype="cf_sql_varchar" />
		</cfquery>
		<cfreturn checkLogin />
	</cffunction>

	<cffunction name="deletePage" returntype="void" >			
			<cfquery>
				DELETE FROM task28_1 WHERE pageid = <cfqueryparam value="#URL.ID#" cfsqltype="cf_sql_integer" />
			</cfquery>
	</cffunction>

	 <cffunction name="getPages" access="public" output="false" returntype="query">		
		<cfquery name="rs_getPage">
			SELECT * FROM task28_1 ORDER BY pageid
		</cfquery>
		<cfreturn rs_getPage />
	</cffunction>

	<cffunction name="getPagesById" access="public" output="false" returntype="query">		
		<cfquery name="rs_getPageId">
			SELECT * FROM task28_1  WHERE pageid = #URL.ID#
		</cfquery>
		<cfreturn rs_getPageId />
	</cffunction>

	<cffunction name="updatePageById" access="public" output="false" >		
		<cfquery>
			UPDATE task28_1 SET pagename = '#form.pagename#',pagedescs = '#form.pagedescs#' WHERE pageid = #URL.ID#
		</cfquery>		
	</cffunction>		 
</cfcomponent>

