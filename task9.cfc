<cfcomponent>
	<cffunction access="public" name="task9">
		<cfif NOT StructKeyExists(Session, "varStruct9")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct9 = StructNew()>
			</cflock>
		</cfif>				
		
		<cfif structKeyExists(Session.varStruct9, "#fld_userKey#") EQ "YES">
			<cfoutput><b>#fld_userKey#</b> already present Cannot add again</cfoutput>
		<cfelse>
			<cfset value=StructInsert(Session.varStruct9, "#fld_userKey#", "#fld_userValue#")>
		</cfif>
		<cfreturn Session.varStruct9 />		
	</cffunction>
</cfcomponent>	 	 	

