<cfset ArrData = arrayNew(1) />
<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset structData = {
			"key1" = "value1",
      "key2" = "value2",
      "key3" = "value3"
    }>
 <cfset ArrAppendData = ArrayAppend(ArrData,structData)>
 
<cfdump  var="#structData#" label="after struct">
<cfdump  var="#ArrData#" label="Arr Append Data">


<Cfloop collection="#form#" item="fItem">
<cfoutput>
<input type="hidden" name="#fItem#" value="#form[fItem]#"/>
</cfoutput>
</cfloop>

</cfif>


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