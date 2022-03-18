<cfcomponent>
	<cffunction access="public" name="task8">
		<cfif NOT StructKeyExists(Session, "varStruct8")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct8 = StructNew()>
			</cflock>
		</cfif>				
		
		<cfif structKeyExists(Session.varStruct8, "#fld_userKey#") EQ "YES">
			<cfset value=StructUpdate(Session.varStruct8, "#fld_userKey#", "#fld_userValue#")>
		<cfelse>
			<cfset value=StructInsert(Session.varStruct8, "#fld_userKey#", "#fld_userValue#")>
		</cfif>
		<cfreturn Session.varStruct8 />		
	</cffunction>
</cfcomponent>	 	 	

