<cfif structKeyExists(Form,"submit")>  
  <cfinvoke component="task19" method="task19" returnvariable="res"></cfinvoke>    
  <cfoutput>VisitsCount : #variables.res.VisitsCount#</cfoutput>
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 19</title>
    </head>
      <body>
        <cfoutput> 
          <form id="" method="post">     
            <table>
              <tr>
                <td align="left">
                  <input type="submit"  name="submit" value="Submit">
                </td>
              </tr>
            </table>
          </form>
        </cfoutput> 
      </body>
  </html>