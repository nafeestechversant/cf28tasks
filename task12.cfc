<cfcomponent>
  <!---addUser() method--->
	<cffunction access="public" name="getUsers">
		<cfquery name="rs_getUsers">
		SELECT firstname,lastname FROM users;
		</cfquery>
		<cfreturn rs_getUsers />     		
	</cffunction>
</cfcomponent>
