<cfif structKeyExists(Form,"submit")>
  <cfset variables.res = application.task19.task19()>    
  <cfoutput>VisitsCount : #variables.res.VisitsCount#</cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 19</title>
    </head>
      <body>
        <form id="" method="post">     
          <table>
            <tr>
              <td align="left">
                <input type="submit"  name="submit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
  </html>