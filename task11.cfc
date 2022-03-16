<cfcomponent>
  <!---addUser() method--->
	<cffunction access="public" name="mulitiply">
		<cfargument name="arg1" type="Numeric" required />
		<cfargument name="arg2" type="Numeric" required />
		<cfargument name="arg3" type="Numeric" />
		<cfargument name="arg4" type="Numeric" />
    		<cfif isDefined("arg4")>
      			<cfset variables.multiple = arg1 * arg2 * arg3 * arg4 />
      		<cfelseif isDefined("arg3")>
      			<cfset variables.multiple = arg1 * arg2 * arg3  />
      		<cfelse>
       			<cfset variables.multiple = arg1 * arg2 />
    		</cfif>    
	 	<cfreturn variables.multiple />
	</cffunction>
</cfcomponent>
