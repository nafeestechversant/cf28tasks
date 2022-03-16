<cfcomponent>
	<cffunction access="public" name="task3">
		<cfif isDefined("Form.fld_userNumber")>
  			<cfset variables.my_list = "#Form.fld_userNumber#">
    			<cfloop list="#my_list#" index="i">    
      				<cfif i mod 3>                   
        				<cfcontinue>
      				</cfif>
      				<cfoutput>#i#,</cfoutput>          
    			</cfloop>
		</cfif> 
	</cffunction>
</cfcomponent>	 	 	

