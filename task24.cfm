<cfif structKeyExists(form,'fld_FormSubmit')>
<cfquery name="addUserinfo">
    INSERT INTO userstask18 (Name, email)
    VALUES ('#form.fld_userName#', '#form.fld_userEmail#')
</cfquery>
<cfoutput>User added Successfully</cfoutput>
</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 24</title>
<cfajaximport>
</head>
<body>
<p id="erroeMsg" style='color: red'></p>
<form id="" name="myform" method="post">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userName">FirstName:</label>					
 </td>
 <td align="left"><input name="fld_userName" id="fld_userName" required="true" /></td>
 </tr>
  <tr><td align="center">
   <label for="fld_userEmail">Email:</label>					
 </td>
 <td align=""><input name="fld_userEmail" id="fld_userEmail" required="true" />
  <input type="checkbox" name="fld_validateEmail" id="fld_validateEmail" onclick="submitForm()"/>
 </td>

 </tr>
  <tr><td align="right"><input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" disabled>
  </td>
  </tr>
 </table>
</form>
<script>
function submitForm() {
   if (document.getElementById("fld_userEmail").value != "") {
      ColdFusion.Ajax.submitForm('myform', 'task24vaildate.cfm', callback,
      errorHandler);
   }
}
function callback(text)
{
  if(text == 1)
    document.getElementById("erroeMsg").innerHTML = "Mail id is already there";
   else 
    document.getElementById("fld_FormSubmit").disabled = false;

  

}
function errorHandler(code, msg)
{
alert("Error!!! " + code + ": " + msg);
}
</script>
</body>
</html>