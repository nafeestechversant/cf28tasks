<cfquery name="getString" >
     SELECT words,word_count FROM task25 ORDER BY word_count DESC, words ASC
</cfquery>
<table border="1" width="400"> 
<tr> 
<th width="50%">Word</th> 
<th>Count</th> 
</tr>
<cfloop query="getString"> 
<cfoutput>
<cfif len(trim(#getString.words#)) GTE 3>
 <tr> <td>#getString.words#</td>
  <td>#getString.word_count#</td> 
  </tr>
</cfif> 
</cfoutput> 
  </cfloop>
</table>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 25- 2</title>
</head>
<body>
</body>
</html>