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
              <cfset currentDate = Now() /> 
              <cfset obj = {}>
              <cfset todaydayOfWeek = dayOfWeek(currentDate)>
              <cfset fridayOffset = (6-todaydayOfWeek)-7>
              <cfset obj.mostRecentFriday = dateAdd("d", fridayOffset, currentDate)>
              <cfoutput>#DateFormat(obj.mostRecentFriday,"dd/mm/yyyy")#</cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userNumber">Last day of month:</label>					
            </td>
            <td>
              <cfset today = now()>
              <cfset firstOfThisMonth = createDate(year(today), month(today), 1)>
              <cfset lastOfNextMonth = dateAdd("d", -1, dateAdd("m", 1, firstOfThisMonth))>
              <cfoutput>#Day(lastOfNextMonth)#<br></cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userNumber">Show Last 5 days date:</label>					
            </td>
            <td>
              <cfset today = now()>
              <cfset firstOfThisMonth = createDate(year(today), month(today), 1)>
              <cfset lastOfNextMonth = dateAdd("d", -1, dateAdd("m", 1, firstOfThisMonth))>
              <cfset lastOfNextMonth1 = dateAdd("d", -2, dateAdd("m", 1, firstOfThisMonth))>
              <cfset lastOfNextMonth2 = dateAdd("d", -3, dateAdd("m", 1, firstOfThisMonth))>
              <cfset lastOfNextMonth3 = dateAdd("d", -4, dateAdd("m", 1, firstOfThisMonth))>
              <cfset lastOfNextMonth4 = dateAdd("d", -5, dateAdd("m", 1, firstOfThisMonth))>
              <cfoutput><span class="black">#DateFormat(lastOfNextMonth,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="yellow">#DateFormat(lastOfNextMonth1,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth1,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="orange">#DateFormat(lastOfNextMonth2,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth2,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="green">#DateFormat(lastOfNextMonth3,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth3,"dddd")#</span><br></cfoutput>
              <cfoutput><span class="red">#DateFormat(lastOfNextMonth4,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth4,"dddd")#</span><br></cfoutput>
            </td>
          </tr> 
        </table>
      </body>
</html>