<cfif structKeyExists(Form,"formSubmit")>
  <cfscript>
    myString="the quick brown fox jumps over the lazy dog"
    writeOutput("The count of <span style='color: red;''>#fld_userText#</span> is: " & ListValueCount(myString,"#fld_userText#"," "))
  </cfscript>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 13</title>
    </head>
      <body>
        <form id="" method="post">
          <table>
            <tr>
              <td align="center">
                <label for="fld_userNumber">Enter Text:</label>					
              </td>
              <td align="left">
                <input name="fld_userText" id="fld_userText" required="true" />
              </td>
            </tr>
            <tr>
              <td align="right">
                <input type="submit" name="formSubmit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
</html>