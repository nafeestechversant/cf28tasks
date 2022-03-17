<cfcomponent>
	<cffunction access="public" name="task2">
		<cfset variables.fld_userNumber = form.fld_userNumber/>	
			<cfswitch expression="#variables.fld_userNumber#"> 
				<cfcase value=5>Very good!</cfcase>
				<cfcase value=4 >Good!</cfcase> 
				<cfcase value=3>Fair!</cfcase>
				<cfdefaultcase>Ok</cfdefaultcase> 
			</cfswitch>		 
	</cffunction>
</cfcomponent>	 	 	

