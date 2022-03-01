
<cfif #isDefined("fld_userdob")#>
<cfset age = dateDiff("yyyy", #fld_userdob#, now())>
<cfset motherage = dateDiff("yyyy", #fld_motherdob#, #fld_userdob#)>
<cfset today = now()>
<cfset userDays = createDate(year(today), DateFormat(#fld_userdob#,"mm"), DateFormat(#fld_userdob#,"dd"))>
<cfset Userdaystill = dateDiff("d", now(), userDays)>

<cfset motherDays = createDate(year(today), DateFormat(#fld_motherdob#,"mm"), DateFormat(#fld_motherdob#,"dd"))>
<cfset Motherdaystill = dateDiff("d", now(), motherDays)>


 <cfoutput>User Age: #age#<br></cfoutput>
 <cfoutput>Mother delivered Her: #motherage#<br></cfoutput>
 <cfoutput>User days Remaining : #Userdaystill#<br></cfoutput>
 <cfoutput>Mother days Remaining : #Motherdaystill#<br></cfoutput>
</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 5</title>
</head>
<body>
<cfform id="">
<table width="75%" cellpadding="0" cellspacing="0">
  <tr><td align="center">
   <label for="fld_userNumber">Enter User DOB:</label>					
 </td>
 <td align="left"><input type="date" name="fld_userdob" id="fld_userdob" required="true" /></td>
 </tr>
  <tr><td align="center">
   <label for="fld_userNumber">Enter Mother DOB:</label>					
 </td>
 <td align="left"><input type="date" name="fld_motherdob" id="fld_motherdob" required="true" /></td>
 </tr>
  <tr><td align="right"><input type="submit" value="Submit">
  </td>
  </tr>
  
 </table>
</cfform>
</body>
</html>