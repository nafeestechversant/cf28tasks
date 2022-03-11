<cfif isDefined("submit")>
  <cfif IsDefined("Cookie.VisitsCounter") is False>
    <cfcookie name="VisitsCounter" value=1 />
      <cfoutput>VisitsCount : 1</cfoutput>
  <cfelse> 
    <cfset cookie_value = #cookie.VisitsCounter# />
    <cfset update_cookie = cookie_value + 1/>
    <cfcookie name="VisitsCounter" value=#update_cookie# />
    <cfoutput>VisitsCount : #VisitsCounter#</cfoutput>
  </cfif> 
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