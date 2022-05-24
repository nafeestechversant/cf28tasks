<cfcomponent>
	<cffunction access="public" name="task7">
		<cfset variables.fld_userKey = form.fld_userKey/>	
		<cfset variables.fld_userValue = form.fld_userValue/>	
		<cfif NOT StructKeyExists(Session, "varStruct")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct = StructNew()>
			</cflock>
		</cfif>				
		<cfif StructKeyExists(Session, "varStruct")>
			<cfif NOT StructKeyExists(Session.varStruct,variables.fld_userKey)>
				<cfset StructInsert(Session.varStruct, variables.fld_userKey,variables.fld_userValue)> 
			</cfif>
		</cfif>	
		<cfreturn Session.varStruct />		
	</cffunction>
</cfcomponent>	 	 	

