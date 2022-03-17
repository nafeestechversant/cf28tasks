<cfcomponent>
	<cffunction access="public" name="task20">
			<cfset variables.errorMessage= arrayNew(1) />
			<cfset variables.fld_userEmail = form.fld_userEmail/>	
			<cfset variables.fld_userCaptcha = form.fld_userCaptcha/>	
			<cfset variables.fld_correctCaptcha = form.fld_correctCaptcha/>	
			<cfif variables.fld_userEmail EQ '' OR NOT isValid("eMail", variables.fld_userEmail)>
				<cfset arrayAppend(errorMessage, 'Please Enter valid Email')>
			</cfif>
			<cfif variables.fld_userCaptcha EQ ''>
				<cfset arrayAppend(errorMessage, 'Please Enter Captcha')>
			</cfif>
			<cfif  variables.fld_userCaptcha NOT EQUAL '' AND variables.fld_userCaptcha NOT EQUAL variables.fld_correctCaptcha>
				<cfset arrayAppend(errorMessage, 'Please Enter Correct Captcha')>
			</cfif>
			<cfif arrayIsEmpty(errorMessage)>
				<cfoutput>Email Address successfully subscribe our newsletter</cfoutput>
			</cfif>		
		<cfreturn variables.errorMessage />
	</cffunction>
</cfcomponent>	 	 	

