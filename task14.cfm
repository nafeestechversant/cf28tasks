


<cfif isDefined("fld_userImage")>
<cfset thisDir = expandPath(".")>
<cfoutput>#thisDir#
</cfoutput>
<!--- Determine whether the form is uploaded with the image. --->
<cfif structKeyExists(form,"fld_userImage") and len(trim(form.fld_userImage))>
<!--- Use the cffile tag to upload the image file. --->
<cffile action="upload" fileField="fld_userImage" destination="#thisDir#" result="fileUpload"
nameconflict="overwrite">
<!--- Determine whether the image file is saved. --->
<cfif fileUpload.fileWasSaved>
<!--- Determine whether the saved file is a valid image file. --->
<cfif IsImageFile("#fileUpload.serverfile#")>
<!--- Read the image file into a variable called myImage. --->
<cfimage action="read" source="#fileUpload.serverfile#" name="myImage">
<!--- Determine whether the image file exceeds the size limits. --->
<cfif ImageGetHeight(myImage) gt 800 or ImageGetWidth(myImage) gt 800>
<!--- If the file is too large, delete it from the server. --->
<cffile action="delete"
file="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
<cfoutput>
<p>
The image you uploaded was too large. It must be less than 800 pixels wide
and 800 pixels high. Your image was #imageGetWidth(myImage)# pixels wide
and #imageGetHeight(myImage)# pixels high.
</p>
</cfoutput>
<!--- If the image is valid and does not exceed the size limits,
create a thumbnail image from the source file that is 75-pixels
square, while maintaining the aspect ratio of the source image.
Use the bilinear interpolation method to improve performance.
--->
<cfelse>

<cfset ImageScaleToFit(myImage,20,20,"bilinear")>
<!--- Specify the new filename as the source filename with
"_thumbnail" appended to it. --->
<cfset newImageName = fileUpload.serverDirectory & "/" &
fileUpload.serverFilename & "_thumbnail." &
fileUpload.serverFileExt>
<!--- Save the thumbnail image to a file with the new filename. --->
<cfimage source="#myImage#" action="write"
destination="#newImageName#" overwrite="yes">
<cfoutput>
<p>
Thank you for uploading the image. We have created a thumbnail for
your picture.
</p>
<table width="75%" cellpadding="0" cellspacing="0">
  <tr>
    <th>Image Name</th>
    <th>Thumbnail</th>   
  </tr>
 <tr><td align="center">
   <a href="task14Details.cfm?imagename=#form.fld_userImageName#&imagedesc=#form.fld_userDesc#&imagefile=#fileUpload.serverFile#">#fld_userImageName#					
 </td>
 <td align="center"><img src="#getFileFromPath(newImageName)#"></td>
 </tr>
  </table>
</cfoutput>
</cfif>
<!--- If it is not a valid image file, delete it from the server. --->
<cfelse>
<cffile action="delete"
file="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
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
<table width="75%" cellpadding="0" cellspacing="0">
 <tr><td align="center">
   <label for="fld_userImageName">Image Name:</label>					
 </td>
 <td align="left"><input name="fld_userImageName" id="fld_userImageName" required="true" /></td>
 </tr>
  <tr><td align="center">
   <label for="fld_userDesc">Description:</label>					
 </td>
 <td align="left"><textarea  name="fld_userDesc" id="fld_userDesc" required="true" /></textarea></td>
 </tr>
   <tr><td align="center">
   <label for="fld_userImage">Image Upload:</label>					
 </td>
 <td align="left"><input type="file" name="fld_userImage" id="fld_userImage" required="true" /></td>
 </tr>
  <tr><td align="right"><input type="submit" value="Submit">
  </td>
  </tr>
 </table>
</form>
</body>
</html>