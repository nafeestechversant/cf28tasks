<cfcomponent>
	<cffunction access="public" name="task8">
		<cfset variables.fld_userKey = form.fld_userKey/>	
		<cfset variables.fld_userValue = form.fld_userValue/>	
		<cfif NOT StructKeyExists(Session, "varStruct8")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct8 = StructNew()>
			</cflock>
		</cfif>						
		<cfif structKeyExists(Session.varStruct8, variables.fld_userKey) EQ "YES">
			<cfset value=StructUpdate(Session.varStruct8, variables.fld_userKey, variables.fld_userValue)>
		<cfelse>
			<cfset value=StructInsert(Session.varStruct8, variables.fld_userKey, variables.fld_userValue)>
		</cfif>
		<cfreturn Session.varStruct8 />		
	</cffunction>
</cfcomponent>	 	 	

