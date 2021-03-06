<cfset variables.output3 = "insert" />
  <cfif structKeyExists(form,'fld_FormSubmit')>
    <cfif form.formAction IS "insert">
      <cfinsert tablename="task28_1" formFields = "pagename,pagedescs"> 
      <p class="green">Page Added</p> 
    <cfelse>
      <cfinvoke component="task28" method="updatePageById" ></cfinvoke>                
      <p class="green">Page Updated</p> 
    </cfif>
  </cfif>
  <cfset variables.output1 = "" />
  <cfset variables.output2 = "" />
  <cfif structKeyExists(URL,'From')>
    <cfif URL.From IS "Edit">      
      <cfinvoke component="task28" method="getPagesById" returnvariable="getPageById"></cfinvoke>          
      <cfset variables.output1 = ((variables.getPageById.pagename EQ '') ? '' : variables.getPageById.pagename) />
      <cfset variables.output2 = ((variables.getPageById.pagedescs EQ '') ? '' : variables.getPageById.pagedescs) />
      <cfset variables.output3 = "update" />
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
          <p> <cfoutput>Welcome #session.stLoggedInUser.userUserName# !</cfoutput></p>
          <p><a href="task28_1.cfm?logout">Logout</a></p>
        <cfelse>
          <cflocation url = "task28_1.cfm">
        </cfif>
        <cfinvoke component="task28" method="getPages" returnvariable="getPages"></cfinvoke>           
        <div class="topnav">        
            <a href="">#getPages.pagename#|</a>          
        </div>
        <cfif session.stLoggedInUser.userRole EQ 1 OR session.stLoggedInUser.userRole EQ 2>
          <p><a href="task28_2.cfm">Home Page</a></p>
          <form id="" name="myform" method="post">
            <input type="hidden" name="formAction" value="#variables.output3#">
            <table width="50%" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center">
                  <label for="fld_userName">Page Name:</label>					
                </td>
                <td align="left">
                  <input name="pagename" id="pagename" required="true" value="#variables.output1#" />
                </td>
              </tr>
              <tr>
                <td align="center">
                  <label for="fld_userEmail">Description:</label>					
                </td>
                <td align="">
                  <textarea  name="pagedescs" id="pagedescs" required="true" rows="10" cols="50" />#variables.output2#</textarea>  
                </td>
              </tr>
              <tr>
                <td align="right">
                  <input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" >
                </td>
              </tr>
            </table>
          </form>
        </cfif>
      </div>
    </cfoutput>
 </body>
 </html>
