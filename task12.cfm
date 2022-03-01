<cfif isDefined("fld_userNumber")>
<cfquery name = "getUsers">
SELECT firstname,lastname FROM users;
</cfquery>
<cfdump var = "#getUsers#">
<cfset n = "#fld_userNumber#" />
<cfquery name = "getNrow">
SELECT firstname FROM users ORDER BY firstname LIMIT <cfqueryparam value="#n#" cfsqltype="cf_sql_integer">,1;
</cfquery>
<cfoutput>#getNrow.firstname#</cfoutput>
</cfif>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 12</title>
</head>
<body>
<form id="">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userNumber">Enter Number:</label>					
 </td>
 <td align="left"><input name="fld_userNumber" id="fld_userNumber" required="true" /></td>
 </tr>
  <tr><td align="right"><input type="submit" value="Submit">
  </td>
  </tr>
 </table>
</form>
</body>
</html>