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
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 11</title>
    </head>
      <body>
        <cfoutput> 
          <table>
            <tr>
              <cfset variables.res = mulitiply(1,2)>
              <cfdump var="#variables.res#"><br>
              <cfset variables.res = mulitiply(1,2,3)>
              <cfdump var="#variables.res#"><br>
              <cfset variables.res = mulitiply(1,2,3,4)>
              <cfdump var="#variables.res#">
            </tr>
          </table>
        </cfoutput> 
      </body>
</html>