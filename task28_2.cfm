<cfif session.stLoggedInUser.userRole EQ 1 OR session.stLoggedInUser.userRole EQ 2>
  <cfif structKeyExists(URL,'From')>
    <cfif URL.From IS "Delete">
      <cfinvoke component="task28" method="deletePage"></cfinvoke>         
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
    <cfoutput>    
      <div align="center">
        <cfif structKeyExists(session,'stLoggedInUser')>
          <p class="green"> Login successful</p>
            <p><cfoutput>Welcome #session.stLoggedInUser.userUserName# !</cfoutput></p>
            <p><a href="task28_1.cfm?logout">Logout</a></p>
        <cfelse>
          <cflocation url = "task28_1.cfm">
        </cfif>
          <cfinvoke component="task28" method="getPages" returnvariable="getPages"></cfinvoke>          
            <div class="topnav">              
                <a href="task28_2.cfm?From=View&ID=#getPages.pageid#">#getPages.pagename#</a>            
        </div>
        <cfif structKeyExists(URL,'From')>
          <cfif URL.From IS "View">
            <cfinvoke component="task28" method="getPagesById" returnvariable="getPagesId"></cfinvoke>            
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
        <cfif session.stLoggedInUser.userRole EQ 1 OR session.stLoggedInUser.userRole EQ 2>
          <p><a href="task28_addpage.cfm">Add Pages</a></p>
          <table>
            <tr>
              <th>Id</th>
              <th>Page Name</th>
              <th>Description</th>
            </tr>            
              <tr>
                <td>#getPages.pageid#</td>
                <td>#getPages.pagename#</td>
                <td>#getPages.pagedescs#</td>
                <td>
                  <form action="task28_addpage.cfm?From=Edit&ID=#getPages.pageid#" method="post">
                    <input type="submit" value="Edit">
                  </form>
                </td>
                <td>
                  <form action="task28_2.cfm?From=Delete&ID=#getPages.pageid#" method="post">
                    <a href="javascript:confirmDelete(#getPages.pageid#);">Delete</a>
                  </form>
                </td>
              </tr>            
          </table>
        </cfif>
      </div>
    </cfoutput>      
	<script src="./js/task28.js"></script>
  
 </body>
 </html>
