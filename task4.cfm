 <cfset res = application.task4.task4()>  
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 4</title>
        <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>
      <body>
        <table>
          <tr>
            <td>
              <label for="fld_userNumber">Today's date:</label>					
            </td>
            <td>
              <cfoutput>#DateFormat(Now(),"dd/mm/yyyy")#</cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userNumber">Current Month in Numeric:</label>					
            </td>
            <td>
              <cfoutput>#DateFormat(Now(),"mm")#</cfoutput>
            </td>
          </tr>  
          <tr>
            <td>
              <label for="fld_userNumber">Current Month in Word:</label>					
            </td>
            <td>
              <cfoutput>#DateFormat(Now(),"mmmm")#</cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userNumber">Last Friday Date:</label>					
            </td>
            <td>            
              <cfoutput>#DateFormat(res.LastFridayDate,"dd/mm/yyyy")#</cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userNumber">Last day of month:</label>					
            </td>
            <td>                    
              <cfoutput>#Day(res.Lastdayofmonth)#<br></cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userNumber">Show Last 5 days date:</label>					
            </td>
            <td>         
              <cfoutput><span class="black">#DateFormat(res.lastOfNextMonth0,"dd-mmm-yyyy")# - #DateFormat(res.lastOfNextMonth0,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="yellow">#DateFormat(res.lastOfNextMonth1,"dd-mmm-yyyy")# - #DateFormat(res.lastOfNextMonth1,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="orange">#DateFormat(res.lastOfNextMonth2,"dd-mmm-yyyy")# - #DateFormat(res.lastOfNextMonth2,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="green">#DateFormat(res.lastOfNextMonth3,"dd-mmm-yyyy")# - #DateFormat(res.lastOfNextMonth3,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="red">#DateFormat(res.lastOfNextMonth4,"dd-mmm-yyyy")# - #DateFormat(res.lastOfNextMonth4,"dddd")#</span><br></cfoutput>
            </td>
          </tr> 
        </table>
      </body>
</html>