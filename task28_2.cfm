<cfif #session.stLoggedInUser.userRole# EQ 1 OR #session.stLoggedInUser.userRole# EQ 2>
<cfif structKeyExists(URL,'From')>
<cfif #URL.From# IS "Delete">

<cfquery name="DeletePage" > 
        DELETE FROM task28_1 
        WHERE pageid = #URL.ID# 
</cfquery> 

</cfif>
</cfif>
</cfif>
<!DOCTYPE html>
<html>
 <head>
   <title><cfoutput>Task 28</cfoutput></title>
 </head>
 <body>
 <div align="center">
<cfif structKeyExists(session,'stLoggedInUser')>
<p style="color:#0000ff"> Login successful</p>
<p> <cfoutput>Welcome #session.stLoggedInUser.userUserName# !</cfoutput></p>
<p><a href="task28_1.cfm?logout">Logout</a></p>
<cfelse>
<cflocation url = "task28_1.cfm">
</cfif>
<cfquery name="getPages">
    SELECT * 
    FROM task28_1
    ORDER BY pageid
</cfquery>
<div class="topnav">
<cfoutput query="getPages">
  <a href="task28_2.cfm?From=View&ID=#pageid#">#pagename#</a>
</cfoutput>
 
</div>
<cfif structKeyExists(URL,'From')>
<cfif #URL.From# IS "View">
<cfquery name="getPagesId">
    SELECT * 
    FROM task28_1  WHERE pageid = #URL.ID#    
</cfquery>

<table>
<tr>
<th>Page Name</th>
<th>Description</th>
</tr>


  <cfoutput query="getPagesId">

  <tr>
 
  <td>#pagename#</td>
  <td>#pagedescs#</td>

</tr>

  </cfoutput>
  </table>
  
</cfif>
</cfif>

<cfif #session.stLoggedInUser.userRole# EQ 1 OR #session.stLoggedInUser.userRole# EQ 2>

<p><a href="task28_addpage.cfm">Add Pages</a></p>
<table>
<tr>
<th>Id</th>
<th>Page Name</th>
<th>Description</th>
</tr>


  <cfoutput query="getPages">

  <tr>
  <td>#pageid#</td>
  <td>#pagename#</td>
  <td>#pagedescs#</td>


  <td>
  <form action="task28_addpage.cfm?From=Edit&ID=#pageid#" method="post">
  <input type="submit" value="Edit">
  </form>
  </td>
  <td>

  <form action="task28_2.cfm?From=Delete&ID=#pageid#" method="post">
  <input type="submit" value="Delete">
  </form>
  </td>
  </tr>

  </cfoutput>
    </table>
</cfif>

 </div>

 </body>
 </html>
