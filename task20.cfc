<cfcomponent>
	<cffunction access="public" name="task20">
			<cfset variables.errorMessage= arrayNew(1) />
			<cfif form.fld_userEmail EQ '' OR NOT isValid("eMail", form.fld_userEmail)>
				<cfset arrayAppend(errorMessage, 'Please Enter valid Email')>
			</cfif>
			<cfif form.fld_userCaptcha EQ ''>
				<cfset arrayAppend(errorMessage, 'Please Enter Captcha')>
			</cfif>
			<cfif  form.fld_userCaptcha NOT EQUAL '' AND form.fld_userCaptcha NOT EQUAL form.fld_correctCaptcha>
				<cfset arrayAppend(errorMessage, 'Please Enter Correct Captcha')>
			</cfif>
			<cfif arrayIsEmpty(errorMessage)>
				<cfoutput>Email Address successfully subscribe our newsletter</cfoutput>
			</cfif>		
		<cfreturn variables.errorMessage />
	</cffunction>
</cfcomponent>	 	 	

