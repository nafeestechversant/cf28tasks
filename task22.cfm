<cfinvoke component="task22" method="task22" returnvariable="cfData"></cfinvoke>   
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Task 22</title>
</head>
  <body>
    <cfoutput>
      <table width="50%" cellpadding="0" cellspacing="0">
        <tr>
          <th align="left">Name</th>
          <th align="left">Age</th>
          <th align="left">Location</th>
        </tr>
        <cfloop index="i" from="1" to="#arrayLen(cfData)#">
          <tr>
            <td>#variables.cfData[i].Name#</td>
            <td>#variables.cfData[i].Age#</td>
            <td>#variables.cfData[i].LOCATION#</td>
          </tr>                   
        </cfloop>
      </table>
    </cfoutput>
  </body>
</html>