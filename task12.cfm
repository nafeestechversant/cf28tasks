<cfif isDefined("fld_userNumber")>
  <cfset res = application.task12.getUsers() />
  <cfdump var = "#res#">
  <cfset n = "#Form.fld_userNumber#" />
  <cfset x = res.firstname[#n#]>
  <cfoutput>#x#</cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 12</title>
    </head>
      <body>
        <form id="" method="post">
          <table>
            <tr>
              <td align="center">
                <label for="fld_userNumber">Enter Number:</label>					
              </td>
              <td align="left">
                <input name="fld_userNumber" id="fld_userNumber" required="true" pattern="[1-9]{1}" title="Enter a number between 1-9" />
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