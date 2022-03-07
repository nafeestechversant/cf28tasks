<cfset output3 = "insert" />
<cfif structKeyExists(form,'fld_FormSubmit')>
<cfif #form.formAction# IS "insert">
<cfinsert tablename="task28_1" formFields = "pagename,pagedescs"> 
<p style="color:#0000ff">Page Added</p> 
<cfelse>
<!--- <cfupdate  tablename="task28_1"> --->
<cfquery>UPDATE task28_1 SET pagename = '#form.pagename#',pagedescs = '#form.pagedescs#' WHERE pageid = #URL.ID#</cfquery>

<p style="color:#0000ff">Page Updated</p> 
</cfif>
</cfif>
<cfset output1 = "" />
<cfset output2 = "" />

<cfif structKeyExists(URL,'From')>
<cfif #URL.From# IS "Edit">
<cfquery name="getPageById">
    SELECT * 
    FROM task28_1 WHERE pageid = #URL.ID#
</cfquery>

<cfset output1 = ((getPageById.pagename EQ '') ? '' : getPageById.pagename) />
<cfset output2 = ((getPageById.pagedescs EQ '') ? '' : getPageById.pagedescs) />
<cfset output3 = "update" />
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
  <a href="">#pagename#|</a>
</cfoutput> 
</div>
<cfif #session.stLoggedInUser.userRole# EQ 1 OR #session.stLoggedInUser.userRole# EQ 2>

<p><a href="task28_2.cfm">Home Page</a></p>
<form id="" name="myform" method="post">
<input type="hidden" name="formAction" value="<cfoutput>#output3#</cfoutput>">
<table width="50%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userName">Page Name:</label>					
 </td>
 <td align="left"><input name="pagename" id="pagename" required="true" value="<cfoutput>#output1#</cfoutput>" /></td>
 </tr>
  <tr><td align="center">
   <label for="fld_userEmail">Description:</label>					
 </td>
 <td align=""><textarea  name="pagedescs" id="pagedescs" required="true" rows="10" cols="50" /><cfoutput>#output2#</cfoutput></textarea>  
 </td>

 </tr>
  <tr><td align="right"><input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" >
  </td>
  </tr>
 </table>
</form>
</cfif>
 </div>

 </body>
 </html>
