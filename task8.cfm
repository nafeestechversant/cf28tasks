<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset variables.res = application.task8.task8()>
  <cfdump  var="#variables.res#">
</cfif>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Task 8</title>
  </head>
    <body>
      <form id="" method="post">
        <table>
          <tr>
            <td align="center">
              <label for="fld_userKey">Enter Key:</label>					
            </td>
            <td align="left">
              <input name="fld_userKey" id="fld_userKey" required="true" />
            </td>
          </tr>
          <tr>
            <td align="center">
              <label for="fld_userValue">Enter Value:</label>					
            </td>
            <td align="left">
              <input name="fld_userValue" id="fld_userValue" required="true" />
            </td>
          </tr>
          <tr>
            <td align="right">
              <input type="submit" name="fld_FormSubmit" value="Submit">
            </td>
          </tr>
        </table>
      </form>
    </body>
</html>