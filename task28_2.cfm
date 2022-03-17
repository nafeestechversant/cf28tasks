<cfif #session.stLoggedInUser.userRole# EQ 1 OR #session.stLoggedInUser.userRole# EQ 2>
  <cfif structKeyExists(URL,'From')>
    <cfif #URL.From# IS "Delete">
      <cfset application.task28.deletePage() />
    </cfif>
  </cfif>
</cfif>
<!DOCTYPE html>
<html>
 <head>
   <title><cfoutput>Task 28</cfoutput></title>
   <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
 </head>
  <body>
    <div align="center">
      <cfif structKeyExists(session,'stLoggedInUser')>
        <p class="green"> Login successful</p>
          <p><cfoutput>Welcome #session.stLoggedInUser.userUserName# !</cfoutput></p>
          <p><a href="task28_1.cfm?logout">Logout</a></p>
      <cfelse>
        <cflocation url = "task28_1.cfm">
      </cfif>
        <cfset variables.getPages = application.task28.getPages() />
          <div class="topnav">
            <cfoutput query="variables.getPages">
              <a href="task28_2.cfm?From=View&ID=#pageid#">#pagename#</a>
            </cfoutput>
      </div>
      <cfif structKeyExists(URL,'From')>
        <cfif #URL.From# IS "View">
          <cfset variables.getPagesId = application.task28.getPagesById() />
            <table>
              <tr>
                <th>Page Name</th>
                <th>Description</th>
              </tr>
              <cfoutput query="variables.getPagesId">
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
          <cfoutput query="variables.getPages">
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
                  <a href="javascript:confirmDelete(#pageid#);">Delete</a>
                </form>
              </td>
            </tr>
          </cfoutput>
        </table>
      </cfif>
    </div>
	<script src="./js/task28.js"></script>
 </body>
 </html>
