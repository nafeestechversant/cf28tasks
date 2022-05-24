<cfinvoke component="task4" method="task4" returnvariable="res"></cfinvoke>   
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 4</title>
        <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>
      <body>
        <cfoutput>
          <table>
            <tr>
              <td>
                <label for="fld_userNumber">Today's date:</label>					
              </td>
              <td>
                #DateFormat(Now(),"dd/mm/yyyy")#
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userNumber">Current Month in Numeric:</label>					
              </td>
              <td>
                #DateFormat(Now(),"mm")#
              </td>
            </tr>  
            <tr>
              <td>
                <label for="fld_userNumber">Current Month in Word:</label>					
              </td>
              <td>
                #DateFormat(Now(),"mmmm")#
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userNumber">Last Friday Date:</label>					
              </td>
              <td>            
                #DateFormat(variables.res.LastFridayDate,"dd/mm/yyyy")#
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userNumber">Last day of month:</label>					
              </td>
              <td>                    
                #Day(variables.res.Lastdayofmonth)#<br>
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userNumber">Show Last 5 days date:</label>					
              </td>
              <td>         
                <span class="black">#DateFormat(variables.res.lastOfNextMonth0,"dd-mmm-yyyy")# - #DateFormat(variables.res.lastOfNextMonth0,"dddd")#</span><br>
                <span class="yellow">#DateFormat(variables.res.lastOfNextMonth1,"dd-mmm-yyyy")# - #DateFormat(variables.res.lastOfNextMonth1,"dddd")#</span><br>
                <span class="orange">#DateFormat(variables.res.lastOfNextMonth2,"dd-mmm-yyyy")# - #DateFormat(variables.res.lastOfNextMonth2,"dddd")#</span><br>
                <span class="green">#DateFormat(variables.res.lastOfNextMonth3,"dd-mmm-yyyy")# - #DateFormat(variables.res.lastOfNextMonth3,"dddd")#</span><br>
                <span class="red">#DateFormat(variables.res.lastOfNextMonth4,"dd-mmm-yyyy")# - #DateFormat(variables.res.lastOfNextMonth4,"dddd")#</span><br>
              </td>
            </tr> 
          </table>
        </cfoutput> 
      </body>
</html>