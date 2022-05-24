<cfcomponent>
	<cffunction access="public" name="task10">
		<cfset variables.fld_userKey = form.fld_userKey/>	
		<cfset variables.fld_userValue = form.fld_userValue/>	
		<cfif NOT StructKeyExists(Session, "varStruct10")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct10 = StructNew()>
			</cflock>
		</cfif>				
		
		<cfif structKeyExists(Session.varStruct10, variables.fld_userKey) EQ "YES">
			<cfoutput><b>#variables.fld_userKey#</b> already present Cannot add again</cfoutput>
		<cfelse>
			<cfset value=StructInsert(Session.varStruct10, variables.fld_userKey, variables.fld_userValue)>
		</cfif>
		<cfreturn Session.varStruct10 />		
	</cffunction>
</cfcomponent>	 	 	

