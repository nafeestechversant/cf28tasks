<cfcomponent>
	<cffunction access="public" name="task21">
		<cfif structKeyExists(form,"fld_userImage") and len(trim(form.fld_userImage))>
			<cfset thisDir = expandPath(".")>
			<cffile action="upload" fileField="fld_userImage" destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
			<cfif fileUpload.fileWasSaved>
				<cfif IsImageFile("#fileUpload.serverfile#")>
				<cfmail to="#form.fld_userEmail#"
					from="naf@mail.com"
					subject="Birthday Wishes"
					type="text" mimeattach="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
					#form.fld_userDesc#
				</cfmail>				
				</cfif>
			</cfif>
		</cfif>	
	</cffunction>
</cfcomponent>	 	 	

