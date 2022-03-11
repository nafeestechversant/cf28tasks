<cfif isDefined("fld_userImage")>
  <cfset thisDir = expandPath(".")>
  <cfoutput>#thisDir#</cfoutput>
  <cfif structKeyExists(form,"fld_userImage") and len(trim(form.fld_userImage))>
    <cffile action="upload" fileField="fld_userImage" destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
      <cfif fileUpload.fileWasSaved>
        <cfif IsImageFile("#fileUpload.serverfile#")>
          <cfimage action="read" source="#fileUpload.serverfile#" name="myImage">
            <cfif ImageGetHeight(myImage) gt 800 or ImageGetWidth(myImage) gt 800>
              <cffile action="delete" file="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
                <cfoutput>
                  <p>
                    The image you uploaded was too large. It must be less than 800 pixels wide
                    and 800 pixels high. Your image was #imageGetWidth(myImage)# pixels wide
                    and #imageGetHeight(myImage)# pixels high.
                  </p>
                </cfoutput>
              <cfelse>
                <cfset ImageScaleToFit(myImage,20,20,"bilinear")>
                <cfset newImageName = fileUpload.serverDirectory & "/" & fileUpload.serverFilename & "_thumbnail." & fileUpload.serverFileExt>
                <cfimage source="#myImage#" action="write" destination="#newImageName#" overwrite="yes">
                <cfoutput>
                  <p>
                    Thank you for uploading the image. We have created a thumbnail for
                    your picture.
                  </p>
                  <table>
                    <tr>
                      <th>Image Name</th>
                      <th>Thumbnail</th>   
                    </tr>
                    <tr>
                      <td align="center">
                        <a href="task14Details.cfm?imagename=#form.fld_userImageName#&imagedesc=#form.fld_userDesc#&imagefile=#fileUpload.serverFile#">#fld_userImageName#					
                      </td>
                      <td align="center">
                        <img src="#getFileFromPath(newImageName)#">
                      </td>
                    </tr>
                  </table>
                </cfoutput>
            </cfif>
        <cfelse>
          <cffile action="delete" file="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
            <cfoutput>
              <p>
                The file you uploaded, #fileUpload.clientFile#, was not a valid image.
              </p>
            </cfoutput>
        </cfif>
      </cfif>
  </cfif>
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
                <input type="submit" value="Submit">
              </td>
            </tr>
          </table>
        </form>
      </body>
</html>