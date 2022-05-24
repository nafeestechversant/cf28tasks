<cfif structKeyExists(form, 'fld_userSubmit')>
  <cfinvoke component="task21" method="task21" returnvariable="res"></cfinvoke>     
 	<cfoutput>
    <p>
    Thank you for registering.
    We have just sent you an email.
    </p>
  </cfoutput>
</cfif>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Task 21</title>
  </head>
    <body>
      <cfoutput> 
        <cfparam name="form.fld_userName"  default=""  type="string">
        <cfparam name="form.fld_userEmail"  default=""  type="string">
        <cfparam name="form.fld_userDesc"  default=""  type="string">
        <form id="" method="post" enctype="multipart/form-data">
          <table>
            <tr>
              <td align="center">
                <label for="fld_userName">Birthday Baby Name:</label>					
              </td>
              <td align="left">
                <input type="text" name="fld_userName" id="fld_userName" value="#form.fld_userName#" required="true" />
              </td>
            </tr>
            <tr>
              <td align="center">
                <label for="fld_userEmail">Email Id :</label>					
              </td>
              <td align="left">
                <input type="text" name="fld_userEmail" id="fld_userEmail" value="#form.fld_userEmail#" required="true" />
              </td>
            </tr>
            <tr>
              <td align="center">
                <label for="fld_userCaptcha">Birthday Wishes :</label>					
              </td>
              <td align="left">
                <textarea  name="fld_userDesc" id="fld_userDesc" value="#form.fld_userDesc#" required="true" /></textarea>
              </td>
            </tr>
            <tr>
              <td align="center">
                <label for="fld_userImage">Greeting  Image:</label>					
              </td>
              <td align="left">
                <input type="file" name="fld_userImage" id="fld_userImage" required="true" />
              </td>
            </tr>
            <tr>
              <td align="right">
                <input name="fld_userSubmit" type="submit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </cfoutput> 
    </body>
</html>