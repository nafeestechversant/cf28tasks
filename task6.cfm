<cfif isDefined("fld_userKey")>  
  <cfset res = application.task6.task6()>  
  <cfdump  var="#res#">
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 6</title>
    </head>
      <body>
        <form id="" method="POST">
          <table>
            <tr>
              <td>
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
                <input type="submit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
</html>