<cfif structKeyExists(Form,"formSubmit")>
  <cfinvoke component="task13" method="task13" returnvariable="res"></cfinvoke> 
  <cfoutput>The count of <span class='red'>#form.fld_userText#</span> is: #res#</cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 13</title>
        <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>
      <body>
        <cfoutput>
         <cfparam name="form.fld_userText"  default=""  type="string">
          <form id="" method="post">
            <table>
              <tr>
                <td align="center">
                  <label for="fld_userNumber">Enter Text:</label>					
                </td>
                <td align="left">
                  <input name="fld_userText" id="fld_userText" value="#form.fld_userText#" required="true" />
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