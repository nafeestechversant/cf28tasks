
<cfif #isDefined("fld_userNumber")#>
<cfswitch expression="#fld_userNumber#"> 
    <cfcase value=5>Very good!</cfcase>
    <cfcase value=4 >Good!</cfcase> 
    <cfcase value=3>Fair!</cfcase>
    <cfdefaultcase>Ok</cfdefaultcase> 
</cfswitch>
</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 2</title>
</head>
<body>
<cfform id="">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userNumber">Enter Number:</label>					
 </td>
 <td align="left"><cfinput name="fld_userNumber" id="fld_userNumber" required="true" message="Please provide a Number between 1 to 5." validateAt="onSubmit" /></td>
 </tr>
  <tr><td align="right"><input type="submit" value="Submit">
  </td>
  </tr>
 </table>
</cfform>
</body>
</html>