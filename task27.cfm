<cfif structKeyExists(URL,'logout')>
  <cfset structdelete(session,'stLoggedInUser') />
</cfif>
<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset checkLogin = application.task27.getQueryTask27() />
    <cfif #checkLogin.recordcount# EQ 1>
      <cfset session.stLoggedInUser = {'userFirstName' = #checkLogin.FirstName#, 'userLastName' = #checkLogin.Surname#, 'userID' = #checkLogin.ID#} > 
      <cflocation url = "welcome.cfm">
    <cfelse>
      <p style="color:#ff0000"> Login failed</p>
    </cfif>
</cfif>
<!DOCTYPE html>
<html>
  <head>
    <title><cfoutput>Task 27</cfoutput></title>
  </head>
  <body>
    <div align="center">
      <form name="form1" method="post" action="">
        <table width="75%" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center">
              <label for="fld_userName">Username :</label>					
            </td>
            <td align="left">
              <input name="fld_userName" id="fld_userName" required="true" />
            </td>
          </tr>
          <tr>
            <td align="center">
              <label for="fld_userEmail">Password :</label>					
            </td>
            <td align="">
              <input type="password" name="fld_userPwd" id="fld_userPwd" required="true" />
            </td>
          </tr>
          <tr>
            <td align="right">
              <input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Login">
            </td>
          </tr>
        </table>
      </form>
    </div>
  </body>
 </html>
