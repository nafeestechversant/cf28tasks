<cfcomponent>
	<cffunction access="public" name="task9">
		<cfset variables.fld_userKey = form.fld_userKey/>	
		<cfset variables.fld_userValue = form.fld_userValue/>
		<cfif NOT StructKeyExists(Session, "varStruct9")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct9 = StructNew()>
			</cflock>
		</cfif>				
		
		<cfif structKeyExists(Session.varStruct9, variables.fld_userKey) EQ "YES">
			<cfoutput><b>#variables.fld_userKey#</b> already present Cannot add again</cfoutput>
		<cfelse>
			<cfset value=StructInsert(Session.varStruct9, variables.fld_userKey, variables.fld_userValue)>
		</cfif>
		<cfreturn Session.varStruct9 />		
	</cffunction>
</cfcomponent>	 	 	

