<cfif structKeyExists(URL,'logout')>
  <cfset structdelete(session,'stLoggedInUser') />
</cfif>
  <cfif structKeyExists(form,'fld_FormSubmit')>
    <cfset variables.checkLogin = application.task28.getLoginQuery() />
      <cfif #variables.checkLogin.recordcount# EQ 1>
        <cfset session.stLoggedInUser = {'userUserName' = #variables.checkLogin.username#, 'userID' = #variables.checkLogin.userid#, 'userRole' = #variables.checkLogin.role#} > 
        <cflocation url = "task28_2.cfm">
      <cfelse>
        <p class="red"> Login failed</p>
      </cfif>
  </cfif>
<!DOCTYPE html>
<html>
  <head>
    <title><cfoutput>Task 28</cfoutput></title>
    <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
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
