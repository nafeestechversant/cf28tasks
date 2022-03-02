<cfif isDefined("submit")>
<cfset cookie_value = #cookie.VisitsCounter# />
<cfset update_cookie = cookie_value + 1/>
<cfcookie name="VisitsCounter" value=#update_cookie# />
</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 19</title>
</head>
<body>
<form id="" method="post">
<p id="error"></p>
<p id="demo"></p>
<table width="75%" cellpadding="0" cellspacing="0">
<tr><td align="left"><input type="submit"  name="submit" value="Submit">
  </td>
  </tr>
 </table>
</form>

</body>
</html>