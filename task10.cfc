<cfcomponent>
	<cffunction access="public" name="task10">
		<cfif NOT StructKeyExists(Session, "varStruct10")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct10 = StructNew()>
			</cflock>
		</cfif>				
		
		<cfif structKeyExists(Session.varStruct10, "#fld_userKey#") EQ "YES">
			<cfoutput><b>#fld_userKey#</b> already present Cannot add again</cfoutput>
		<cfelse>
			<cfset value=StructInsert(Session.varStruct10, "#fld_userKey#", "#fld_userValue#")>
		</cfif>
		<cfreturn Session.varStruct10 />		
	</cffunction>
</cfcomponent>	 	 	

