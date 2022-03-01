
<cfif #isDefined("fld_userNumber")#>

</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 4</title>
</head>
<body>
<cfform id="">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userNumber">Today's date:</label>					
 </td>
 <td align="left"><cfoutput>#DateFormat(Now(),"dd/mm/yyyy")#</cfoutput></td>
 </tr>
  <tr><td align="center">
   <label for="fld_userNumber">Current Month in Numeric:</label>					
 </td>
 <td align="left"><cfoutput>#DateFormat(Now(),"mm")#</cfoutput></td>
 </tr>  
   <tr><td align="center">
   <label for="fld_userNumber">Current Month in Word:</label>					
 </td>
 <td align="left"><cfoutput>#DateFormat(Now(),"mmmm")#</cfoutput></td>
 </tr>
   <tr><td align="center">
   <label for="fld_userNumber">Last Friday Date:</label>					
 </td>
 <td align="left">
<cfset currentDate = Now() /> 
<cfset obj = {}>
<cfset todaydayOfWeek = dayOfWeek(currentDate)>
<cfset fridayOffset = (6-todaydayOfWeek)-7>
<cfset obj.mostRecentFriday = dateAdd("d", fridayOffset, currentDate)>
<cfoutput>#DateFormat(obj.mostRecentFriday,"dd/mm/yyyy")#</cfoutput>
 </td>
 </tr>
   <tr><td align="center">
   <label for="fld_userNumber">Last day of month:</label>					
 </td>
 <td align="left">
<cfset today = now()>
<cfset firstOfThisMonth = createDate(year(today), month(today), 1)>
<cfset lastOfNextMonth = dateAdd("d", -1, dateAdd("m", 1, firstOfThisMonth))>
<cfoutput>#Day(lastOfNextMonth)#<br>
</cfoutput>
 </td>
 </tr>
   <tr><td align="center">
   <label for="fld_userNumber">Show Last 5 days date:</label>					
 </td>
 <td align="left">
<cfset today = now()>
<cfset firstOfThisMonth = createDate(year(today), month(today), 1)>
<cfset lastOfNextMonth = dateAdd("d", -1, dateAdd("m", 1, firstOfThisMonth))>
<cfset lastOfNextMonth1 = dateAdd("d", -2, dateAdd("m", 1, firstOfThisMonth))>
<cfset lastOfNextMonth2 = dateAdd("d", -3, dateAdd("m", 1, firstOfThisMonth))>
<cfset lastOfNextMonth3 = dateAdd("d", -4, dateAdd("m", 1, firstOfThisMonth))>
<cfset lastOfNextMonth4 = dateAdd("d", -5, dateAdd("m", 1, firstOfThisMonth))>
<cfoutput><span style="color: black;">#DateFormat(lastOfNextMonth,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth,"dddd")#</span><br></cfoutput>
<cfoutput><span style="color: yellow;">#DateFormat(lastOfNextMonth1,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth1,"dddd")#</span><br></cfoutput>
<cfoutput><span style="color: orange;">#DateFormat(lastOfNextMonth2,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth2,"dddd")#</span><br></cfoutput>
<cfoutput><span style="color: green;">#DateFormat(lastOfNextMonth3,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth3,"dddd")#</span><br></cfoutput>
<cfoutput><span style="color: red;">#DateFormat(lastOfNextMonth4,"dd-mmm-yyyy")# - #DateFormat(lastOfNextMonth4,"dddd")#</span><br></cfoutput>
 </td>
 </tr> 
 </table>
</cfform>
</body>
</html>