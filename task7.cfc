<cfcomponent>
	<cffunction access="public" name="task7">
		<cfif NOT StructKeyExists(Session, "varStruct")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.varStruct = StructNew()>
			</cflock>
		</cfif>				
		<cfif StructKeyExists(Session, "varStruct")>
			<cfif NOT StructKeyExists(Session.varStruct,form.fld_userKey)>
				<cfset StructInsert(Session.varStruct, form.fld_userKey,form.fld_userValue)> 
			</cfif>
		</cfif>	
		<cfreturn Session.varStruct />		
	</cffunction>
</cfcomponent>	 	 	

