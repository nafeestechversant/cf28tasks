<cfif structKeyExists(Form,"formSubmit")>  
  <cfinvoke component="task6" method="task6" returnvariable="res"></cfinvoke>  
  <cfdump  var="#variables.res#">
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 6</title>
    </head>
      <body>
        <cfoutput> 
          <cfparam name="form.fld_userKey"  default="key1"  type="string">
          <cfparam name="form.fld_userValue"  default="value1"  type="string">
          <form id="" method="POST">
            <table>
              <tr>
                <td>
                  <label for="fld_userKey">Enter Key:</label>					
                </td>
                <td align="left">
                  <input name="fld_userKey" id="fld_userKey" value="#form.fld_userKey#" required="true" />
                </td>
              </tr>
              <tr>
                <td align="center">
                  <label for="fld_userValue">Enter Value:</label>					
                </td>
                <td align="left">
                  <input name="fld_userValue" id="fld_userValue" value="#form.fld_userValue#" required="true" />
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