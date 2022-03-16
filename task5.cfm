<cfif structKeyExists(Form,"formSubmit")>
  <cfset variables.res = application.task5.task5()>  
  <cfoutput>User Age: #variables.res.age#<br></cfoutput>
  <cfoutput>Mother delivered Her: #variables.res.motherage#<br></cfoutput>
  <cfoutput>User days Remaining : #variables.res.Userdaystill#<br></cfoutput>
  <cfoutput>Mother days Remaining : #variables.res.Motherdaystill#<br></cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
      <title>Task 5</title>
    </head>
      <body>
        <form id="" method="POST">
          <table>
            <tr>
              <td>
                <label for="fld_userNumber">Enter User DOB:</label>					
              </td>
              <td>
                <input type="date" name="fld_userdob" id="fld_userdob" required="true" />
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userNumber">Enter Mother DOB:</label>					
              </td>
              <td>
               <input type="date" name="fld_motherdob" id="fld_motherdob" required="true" />
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