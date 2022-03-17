<cfcomponent>
	<cffunction access="public" name="task21">
		<cfif structKeyExists(form,"fld_userImage") and len(trim(form.fld_userImage))>
			<cfset variables.fld_userName = form.fld_userName/>	
			<cfset variables.fld_userEmail = form.fld_userEmail/>	
			<cfset variables.fld_userDesc = form.fld_userDesc/>	
			<cfset thisDir = expandPath(".")>
			<cffile action="upload" fileField="fld_userImage" destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
			<cfif fileUpload.fileWasSaved>
				<cfif IsImageFile("#fileUpload.serverfile#")>
				<cfmail to="#variables.fld_userEmail#"
					from="naf@mail.com"
					subject="Birthday Wishes"
					type="text" mimeattach="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
					#variables.fld_userDesc#
				</cfmail>				
				</cfif>
			</cfif>
		</cfif>	
	</cffunction>
</cfcomponent>	 	 	

