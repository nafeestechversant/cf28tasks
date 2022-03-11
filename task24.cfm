<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset application.task24.addUserInfo(form.fld_userName,form.fld_userEmail) />
  <cfoutput>User added Successfully</cfoutput>
</cfif>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
      <title>Task 24</title>
        <cfajaximport>
  </head>
  <body>
    <p id="erroeMsg" style='color: red'></p>
    <form id="" name="myform" method="post">
      <tabl>
        <tr>
          <td>
            <label for="fld_userName">FirstName:</label>					
          </td>
          <td>
            <input name="fld_userName" id="fld_userName" required="true" />
          </td>
        </tr>
        <tr>
          <td>
            <label for="fld_userEmail">Email:</label>					
          </td>
          <td>
            <input name="fld_userEmail" id="fld_userEmail" required="true" />
            <input type="checkbox" name="fld_validateEmail" id="fld_validateEmail" onclick="submitForm()"/>
          </td>
        </tr>
        <tr>
          <td>
            <input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" disabled>
          </td>
        </tr>
      </table>
    </form>
    <script src="./js/task24.js"></script>
  </body>
</html>