<cfif structKeyExists(Form,"formSubmit")>
    <cfset variables.res = application.task14.task14()>   
</cfif>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 14</title>
    </head>
      <body>
        <form id="" method="post" enctype="multipart/form-data">
          <table>
            <tr>
              <td>
                <label for="fld_userImageName">Image Name:</label>					
              </td>
              <td>
                <input name="fld_userImageName" id="fld_userImageName" required="true" />
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userDesc">Description:</label>					
              </td>
              <td>
                <textarea  name="fld_userDesc" id="fld_userDesc" required="true" /></textarea>
              </td>
            </tr>
            <tr>
              <td>
                <label for="fld_userImage">Image Upload:</label>					
              </td>
              <td>
                <input type="file" name="fld_userImage" id="fld_userImage" required="true" />
              </td>
            </tr>
            <tr>
              <td>
                <input type="submit" name="formSubmit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
</html>