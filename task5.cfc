<cfcomponent>
	<cffunction access="public" name="task5">
		<cfset variables.age = dateDiff("yyyy", #Form.fld_userdob#, now())>
		<cfset variables.motherage = dateDiff("yyyy", #Form.fld_motherdob#, #Form.fld_userdob#)>
		<cfset variables.today = now()>
		<cfset variables.userDays = createDate(year(variables.today), DateFormat(#Form.fld_userdob#,"mm"), DateFormat(#Form.fld_userdob#,"dd"))>
		<cfset variables.Userdaystill = dateDiff("d", now(), variables.userDays)>
		<cfset variables.motherDays = createDate(year(variables.today), DateFormat(#Form.fld_motherdob#,"mm"), DateFormat(#Form.fld_motherdob#,"dd"))>
		<cfset variables.Motherdaystill = dateDiff("d", now(), variables.motherDays)> 
		<cfset variables.returnData = {
			"age" = variables.age,
			"motherage" = variables.motherage,
			"Userdaystill" = variables.Userdaystill,
			"Motherdaystill" = variables.Motherdaystill			
		}>

		<cfreturn variables.returnData />
	</cffunction>
</cfcomponent>	 	 	

