<cfif isDefined("fld_userNumber")>
  <cfif fld_userNumber eq 5>
    Very good!
      <cfelseif fld_userNumber eq 4>
        Good!
      <cfelseif fld_userNumber eq 3>
        Fair!    
      <cfelse>
        Ok
  </cfif>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 1</title>
    </head>
      <body>
        <form id="">
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
                <input type="submit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
  </html>