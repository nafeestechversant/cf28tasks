<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 14</title>
    </head>
      <body>
        <table>
          <tr>
            <td>
              <label for="fld_userImageName">Image Name:</label>					
            </td>
            <td>
              <cfoutput>#URL.imagename#</cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userDesc">Description:</label>					
            </td>
            <td>
              <cfoutput>#URL.imagedesc#</cfoutput>
            </td>
          </tr>
          <tr>
            <td>
              <label for="fld_userImage">Image Upload:</label>					
            </td>
            <td>
              <cfoutput><img src="#imagefile#"/></cfoutput>
            </td>
          </tr>
        </table>
      </body>
</html>