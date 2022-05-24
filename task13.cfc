<cfcomponent>
	<cffunction access="public" name="task13">				
		<cfset variables.fld_userText = form.fld_userText/>
		<cfset variables.myString = "the quick brown fox jumps over the lazy dog" />
		<cfset variables.returnData = ListValueCount(variables.myString, variables.fld_userText," ") /> 
		<cfreturn variables.returnData />
	</cffunction>
</cfcomponent>	 	 	

