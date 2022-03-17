<cfcomponent>
	<cffunction access="public" name="task22">
		<cfset variables.qList = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]' /> 		
		<cfset variables.cfData=DeserializeJSON(variables.qList)>		
		<cfreturn variables.cfData />
	</cffunction>
</cfcomponent>	 	 	

