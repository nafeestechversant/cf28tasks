<cfcomponent>
	<cffunction access="public" name="task1">
		<cfset variables.fld_userNumber = form.fld_userNumber/>		
			<cfif variables.fld_userNumber eq 5>
				Very good!
				<cfelseif variables.fld_userNumber eq 4>
					Good!
				<cfelseif variables.fld_userNumber eq 3>
					Fair!    
				<cfelse>
					Ok
			</cfif>		 
	</cffunction>
</cfcomponent>	 	 	

