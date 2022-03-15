<cfcomponent>
	<cffunction access="public" name="task1">
		<cfif isDefined("Form.fld_userNumber")>
			<cfif Form.fld_userNumber eq 5>
				Very good!
				<cfelseif Form.fld_userNumber eq 4>
					Good!
				<cfelseif Form.fld_userNumber eq 3>
					Fair!    
				<cfelse>
					Ok
			</cfif>
		</cfif> 
	</cffunction>
</cfcomponent>	 	 	

