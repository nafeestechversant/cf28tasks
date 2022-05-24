<cfif structKeyExists(Form,"formSubmit")>
  <cfinvoke component="task12" method="getUsers" returnvariable="res"></cfinvoke>  
  <cfdump var = "#variables.res.rs_getUsers#">
  <cfoutput>#variables.res.firstName#</cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 12</title>
    </head>
      <body>
        <cfoutput>
          <cfparam name="form.fld_userNumber"  default=1  type="integer">
          <form id="" method="post">
            <table>
              <tr>
                <td align="center">
                  <label for="fld_userNumber">Enter Number:</label>					
                </td>
                <td align="left">
                  <input name="fld_userNumber" id="fld_userNumber" value="#form.fld_userNumber#" required="true" pattern="[1-9]{1}" title="Enter a number between 1-9" />
                </td>
              </tr>
              <tr>
                <td align="right">
                  <input type="submit" name="formSubmit" value="Submit">
                </td>
              </tr>
            </table>
          </form>
        </cfoutput>
      </body>
  </html>