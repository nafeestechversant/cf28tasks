<cfif structKeyExists(Form,"formSubmit")>  
  <cfinvoke component="task5" method="task5" returnvariable="res"></cfinvoke>    
  <cfoutput>
      User Age: #variables.res.age#<br>
      Mother delivered Her: #variables.res.motherage#<br>
      User days Remaining : #variables.res.Userdaystill#<br>
      Mother days Remaining : #variables.res.Motherdaystill#<br> 
  </cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
      <title>Task 5</title>
    </head>
      <body>
        <cfoutput>        
          <cfparam name="form.fld_userdob"  default="18/04/2019"  type="string">
          <cfparam name="form.fld_motherdob"  default="15/06/1996"  type="string">
            <form id="" method="POST">
              <table>
                <tr>
                  <td>
                    <label for="fld_userNumber">Enter User DOB:</label>					
                  </td>
                  <td>
                    <input type="date" name="fld_userdob" id="fld_userdob" value="#form.fld_userdob#" required="true" />
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="fld_userNumber">Enter Mother DOB:</label>					
                  </td>
                  <td>
                  <input type="date" name="fld_motherdob" id="fld_motherdob" value="#form.fld_motherdob#" required="true" />
                  </td>
                </tr>
                <tr>
                  <td>
                    <input type="submit" name="formSubmit" value="Submit">
                  </td>
                </tr>
              </table>
            </form>
        </cfoutput> 
      </body>
  </html>