<cfset qList = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]' />
<cfset cfData=DeserializeJSON(qList)>
  <cfoutput>
    <table width="50%" cellpadding="0" cellspacing="0">
      <tr>
        <th align="left">Name</th>
        <th align="left">Age</th>
        <th align="left">Location</th>
      </tr>
      <cfloop index="i" from="1" to="#arrayLen(cfData)#">
        <tr>
          <td>#cfData[i].Name#</td>
          <td>#cfData[i].Age#</td>
          <td>#cfData[i].LOCATION#</td>
        </tr>                   
      </cfloop>
    </table>
  </cfoutput>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 22</title>
</head>
<body>
</body>
</html>