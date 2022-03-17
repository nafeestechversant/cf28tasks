<cfcomponent>
	<cffunction access="public" name="task14">		
  		<cfset variables.thisDir = expandPath(".")>
  			<cfif structKeyExists(form,"fld_userImage") and len(trim(form.fld_userImage))>
			  	<cfset variables.fld_userImageName = form.fld_userImageName/>	
				<cfset variables.fld_userDesc = form.fld_userDesc/>	
				<cfset variables.fld_userImage = form.fld_userImage/>	  
    			<cffile action="upload" fileField="form.fld_userImage" destination="#variables.thisDir#" result="fileUpload" nameconflict="overwrite">
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
                					<cfset variables.newImageName = fileUpload.serverDirectory & "/" & fileUpload.serverFilename & "_thumbnail." & fileUpload.serverFileExt>
                					<cfimage source="#myImage#" action="write" destination="#variables.newImageName#" overwrite="yes">
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
											<a href="task14Details.cfm?imagename=#variables.fld_userImageName#&imagedesc=#variables.fld_userDesc#&imagefile=#fileUpload.serverFile#">#variables.fld_userImageName#					
										</td>
										<td align="center">
											<img src="#getFileFromPath(variables.newImageName)#">
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
	</cffunction>
</cfcomponent>	 	 	

