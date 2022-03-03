
<cfif structKeyExists(form, 'fld_userSubmit')>
<cfset errorMessage= arrayNew(1) />
<cfif form.fld_userEmail EQ '' OR NOT isValid("eMail", form.fld_userEmail)>
<cfset arrayAppend(errorMessage, 'Please Enter valid Email')>
</cfif>
<cfif form.fld_userCaptcha EQ ''>
<cfset arrayAppend(errorMessage, 'Please Enter Captcha')>
</cfif>
<cfif  form.fld_userCaptcha NOT EQUAL form.fld_correctCaptcha>
<cfset arrayAppend(errorMessage, 'Please Enter Correct Captcha')>
</cfif>
<cfif arrayIsEmpty(errorMessage)>
<cfoutput>Email Address successfully subscribe our newsletter</cfoutput>
</cfif>
</cfif>
<cfset securityCode = application.utils.generateCaptcha() />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 20</title>
</head>
<body>
<cfif isDefined('errorMessage') AND NOT arrayIsEmpty(errorMessage)>
<cfoutput>
<cfloop array="#errorMessage#" index="message">
<p>#message#</p>
</cfloop>
</cfoutput>
</cfif>
<form id="" method="post">
<table width="75%" cellpadding="0" cellspacing="0">
<input type="hidden" name="fld_correctCaptcha" value=<cfoutput>#securityCode#</cfoutput>  />
 <tr><td align="center">
   <label for="fld_userEmail">Email:</label>					
 </td>
 <td align="left"><input type="text" name="fld_userEmail" id="fld_userEmail"  /></td>
 </tr>
 <cfimage action="captcha" text="#securityCode#" height="50" width="250" difficulty="low" fonts="Verdana" />
  <tr><td align="center">
   <label for="fld_userCaptcha">Captcha :</label>					
 </td>
 <td align="left"><input name="fld_userCaptcha" id="fld_userCaptcha" /></td>
 </tr>
  <tr><td align="right"><input name="fld_userSubmit" type="submit" value="Submit">
  </td>
  </tr>
 </table>
</form>
</body>
</html>