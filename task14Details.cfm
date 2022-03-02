<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 14</title>
</head>
<body>
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userImageName">Image Name:</label>					
 </td>
 <td align="left">
 <cfoutput>#URL.imagename#</cfoutput>
 </td>
 </tr>
  <tr><td align="center">
   <label for="fld_userDesc">Description:</label>					
 </td>
 <td align="left"><cfoutput>#URL.imagedesc#</cfoutput>
 </td>
 </tr>
   <tr><td align="center">
   <label for="fld_userImage">Image Upload:</label>					
 </td>
 <td align="left">
  <cfoutput><img src="#imagefile#"/></cfoutput>

 </td>
 </tr>

 </table>
</body>
</html>