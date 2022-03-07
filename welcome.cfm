<!DOCTYPE html>
<html>
 <head>
   <title><cfoutput>Task 27</cfoutput></title>
 </head>
 <body>
 <div align="center">
<cfif structKeyExists(session,'stLoggedInUser')>
<p style="color:#0000ff"> Login successful</p>
<p> <cfoutput>Welcome #session.stLoggedInUser.userFirstName# #session.stLoggedInUser.userLastName#!</cfoutput></p>
<p><a href="task27.cfm?logout">Logout</a></p>
<cfelse>
<cflocation url = "task27.cfm">
</cfif>


 </div>

 </body>
 </html>
