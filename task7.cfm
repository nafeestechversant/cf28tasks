<cfif structKeyExists(form,'fld_FormSubmit')>
<cfset glob_var = application.myglobalvariable />
<cfset value=StructInsert(glob_var, "#fld_userKey#", "#fld_userValue#")>
<cfdump  var="#glob_var#">
</cfif>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 7</title>
</head>
<body>
<cfform id="">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userKey">Enter Key:</label>					
 </td>
 <td align="left"><input name="fld_userKey" id="fld_userKey" required="true" /></td>
 </tr>
  <tr><td align="center">
   <label for="fld_userValue">Enter Value:</label>					
 </td>
 <td align="left"><input name="fld_userValue" id="fld_userValue" required="true" /></td>
 </tr>
  <tr><td align="right"><input type="submit" name="fld_FormSubmit" value="Submit">
  </td>
  </tr>
 </table>
</cfform>
</body>
</html>