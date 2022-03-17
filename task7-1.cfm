<cfset ArrData = arrayNew(1) />
<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset structData = {
			"#form.fld_userKey#" = #form.fld_userValue#
    }>
 <cfset ArrAppendData = ArrayAppend(ArrData,structData)>
 

</cfif>
<cfdump  var="#structData#" label="after struct">
<cfdump  var="#ArrData#" label="Arr Append Data">

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 7</title>
</head>
<body>
<form id="" method="post">
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
</form>
</body>
</html>