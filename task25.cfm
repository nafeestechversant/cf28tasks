<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfinvoke component="tagCloud" method="addString">
    <cfinvokeargument name="userString" value="#form.fld_userDesc#">   
  </cfinvoke>    
  <cfoutput>Data Stored Successfully</cfoutput>
</cfif>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
      <title>Task 25</title>
  </head>
  <body>
    <cfoutput>
      <cfparam name="form.fld_userDesc"  default=""  type="string">
      <form id="" name="myform" method="post">
        <table>
          <tr>
            <td>
              <label for="fld_userEmail">Text:</label>					
            </td>
            <td>
              <textarea  name="fld_userDesc" id="fld_userDesc" value="#form.fld_userDesc#" required="true" rows="4" cols="50" /></textarea>
            </td>
          </tr>
          <tr>
            <td>
              <input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" >
            </td>
          </tr>
        </table>
      </form>
    </cfoutput>
  </body>
</html>