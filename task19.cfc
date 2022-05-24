<cfcomponent>
	<cffunction access="public" name="task19">
		 <cfif IsDefined("Cookie.VisitsCounter") is False>
			<cfcookie name="VisitsCounter" value=1 />
			<cfset variables.VisitsCount = 1>			
		<cfelse> 
			<cfset variables.cookie_value = cookie.VisitsCounter />
			<cfset variables.update_cookie = cookie_value + 1/>
			<cfcookie name="VisitsCounter" value=#update_cookie# />
			<cfset variables.VisitsCount = variables.update_cookie>				
		</cfif> 
		<cfset variables.returnData = {
			"VisitsCount" = variables.VisitsCount			
		}>

		<cfreturn variables.returnData />
	</cffunction>
</cfcomponent>	 	 	



