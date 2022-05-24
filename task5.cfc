<cfcomponent>
	<cffunction access="public" name="task5">
		<cfset variables.fld_userdob = form.fld_userdob/>	
		<cfset variables.fld_motherdob = form.fld_motherdob/>	
		<cfset variables.age = dateDiff("yyyy", variables.fld_userdob, now())>
		<cfset variables.motherage = dateDiff("yyyy", variables.fld_motherdob, variables.fld_userdob)>
		<cfset variables.today = now()>
		<cfset variables.userDays = createDate(year(variables.today), DateFormat(variables.fld_userdob,"mm"), DateFormat(variables.fld_userdob,"dd"))>
		<cfset variables.Userdaystill = dateDiff("d", now(), variables.userDays)>
		<cfset variables.motherDays = createDate(year(variables.today), DateFormat(variables.fld_motherdob,"mm"), DateFormat(variables.fld_motherdob,"dd"))>
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

