<cfif structKeyExists(form,'fld_FormSubmit')>
<cfset list = "#form.fld_userDesc#"> 
<cfset stringInfo = application.tagCloud.addString(form.fld_userDesc) />
<cfset sorted = structSort(stringInfo)>

<cfloop index="word" array="#sorted#"> 
  <cfquery  >
   INSERT INTO task25 (words, word_count)
			VALUES ('#word#',#stringInfo[word]#)
		</cfquery>  
  </cfloop>
</cfif>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 25</title>
<cfajaximport>
</head>
<body>
<p id="erroeMsg" style='color: red'></p>
<form id="" name="myform" method="post">
<table width="75%" cellpadding="0" cellspacing="0">
 
  <tr><td align="center">
   <label for="fld_userEmail">Text:</label>					
 </td>
 <td align=""><textarea  name="fld_userDesc" id="fld_userDesc" required="true" rows="4" cols="50" /></textarea>

 </td>

 </tr>
  <tr><td align="right"><input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" >
  </td>
  </tr>
 </table>
</form>

</body>
</html>