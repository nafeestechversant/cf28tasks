<cfcomponent>
	<cffunction access="public" name="task3">
		<cfset variables.fld_userNumber = form.fld_userNumber/>	
  			<cfset variables.my_list = "#variables.fld_userNumber#">
    			<cfloop list="#my_list#" index="i">    
      				<cfif i mod 3>                   
        				<cfcontinue>
      				</cfif>
      				<cfoutput>#i#,</cfoutput>          
    			</cfloop>		 
	</cffunction>
</cfcomponent>	 	 	

