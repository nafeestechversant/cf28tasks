<cfcomponent>
	<cffunction access="public" name="task2">
		<cfif isDefined("Form.fld_userNumber")>
			<cfswitch expression="#Form.fld_userNumber#"> 
				<cfcase value=5>Very good!</cfcase>
				<cfcase value=4 >Good!</cfcase> 
				<cfcase value=3>Fair!</cfcase>
				<cfdefaultcase>Ok</cfdefaultcase> 
			</cfswitch>
		</cfif> 
	</cffunction>
</cfcomponent>	 	 	

