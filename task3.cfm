<cfif structKeyExists(Form,"formSubmit")>
  <cfset variables.res = application.task3.task3()>  
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 3</title>
    </head>
      <body>
        <cfparam name="form.fld_userNumber"  default=1  type="string">
        <form id="" method="POST">
          <table>
            <tr>
              <td>
                <label for="fld_userNumber">Enter Number:</label>					
              </td>
              <td>
                <input name="fld_userNumber" id="fld_userNumber" required="true" message="Please provide a Number between 1 to 5." validateAt="onSubmit" />
              </td>
            </tr>
            <tr>
              <td>
                <input type="submit" name="formSubmit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
  </html>