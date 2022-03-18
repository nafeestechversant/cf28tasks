<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset variables.res = application.task9.task9()>
  <cfdump  var="#variables.res#">
</cfif>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Task 9</title>
</head>
  <body>
    <form id="" method="post">
      <table>
        <tr>
          <td>
            <label for="fld_userKey">Enter Key:</label>					
          </td>
          <td>
            <input name="fld_userKey" id="fld_userKey" required="true" />
          </td>
        </tr>
        <tr>
          <td>
             <label for="fld_userValue">Enter Value:</label>					
          </td>
          <td>
            <input name="fld_userValue" id="fld_userValue" required="true" />
          </td>
        </tr>
        <tr>
          <td>
            <input type="submit" name="fld_FormSubmit" value="Submit">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>