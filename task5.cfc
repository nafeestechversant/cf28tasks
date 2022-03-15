<cfcomponent>
	<cffunction access="public" name="task5">
		<cfset age = dateDiff("yyyy", #Form.fld_userdob#, now())>
		<cfset motherage = dateDiff("yyyy", #Form.fld_motherdob#, #Form.fld_userdob#)>
		<cfset today = now()>
		<cfset userDays = createDate(year(today), DateFormat(#Form.fld_userdob#,"mm"), DateFormat(#Form.fld_userdob#,"dd"))>
		<cfset Userdaystill = dateDiff("d", now(), userDays)>
		<cfset motherDays = createDate(year(today), DateFormat(#Form.fld_motherdob#,"mm"), DateFormat(#Form.fld_motherdob#,"dd"))>
		<cfset Motherdaystill = dateDiff("d", now(), motherDays)> 
		<cfset returnData = {
			"age" = age,
			"motherage" = motherage,
			"Userdaystill" = Userdaystill,
			"Motherdaystill" = Motherdaystill			
		}>

		<cfreturn returnData />
	</cffunction>
</cfcomponent>	 	 	

