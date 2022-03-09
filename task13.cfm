
<cfif isDefined("fld_userText")>

<cfscript>
    myString="the quick brown fox jumps over the lazy dog"
    writeOutput("The count of <span style='color: red;''>#fld_userText#</span> is: " & ListValueCount(myString,"#fld_userText#"," "))
</cfscript>

</cfif>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 13</title>
</head>
<body>
<form id="" method="post">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userNumber">Enter Text:</label>					
 </td>
 <td align="left"><input name="fld_userText" id="fld_userText" required="true" /></td>
 </tr>
  <tr><td align="right"><input type="submit" value="Submit">
  </td>
  </tr>
 </table>
</form>
</body>
</html>