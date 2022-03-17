<cfif structKeyExists(form, 'fld_userSubmit')>
  <cfset variables.errorMessage = application.task20.task20() />  
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
        <cfparam name="form.fld_userCaptcha"  default=""  type="string">
        <cfparam name="form.fld_userEmail"  default=""  type="string">
        <cfparam name="form.fld_correctCaptcha"  default=""  type="string">
        <form id="" method="post">
          <table>
            <input type="hidden" name="fld_correctCaptcha" value=<cfoutput>#securityCode#</cfoutput>  />
              <tr>
                <td>
                  <label for="fld_userEmail">Email:</label>					
                </td>
                <td>
                  <input type="text" name="fld_userEmail" id="fld_userEmail"  />
                </td>
              </tr>
              <cfimage action="captcha" text="#securityCode#" height="50" width="250" difficulty="low" fonts="Verdana" />
              <tr>
                <td>
                  <label for="fld_userCaptcha">Captcha :</label>					
                </td>
                <td>
                  <input name="fld_userCaptcha" id="fld_userCaptcha" />
                </td>
              </tr>
              <tr>
                <td>
                  <input name="fld_userSubmit" type="submit" value="Submit">
                </td>
              </tr>
            </table>
        </form>
    </body>
</html>