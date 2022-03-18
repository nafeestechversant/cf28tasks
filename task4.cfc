<cfcomponent>
	<cffunction access="public" name="task4">
		<cfset variables.currentDate = Now() /> 		
		<cfset variables.todaydayOfWeek = dayOfWeek(variables.currentDate)>
		<cfset variables.fridayOffset = (6-variables.todaydayOfWeek)-7>
		<cfset variables.mostRecentFriday = dateAdd("d", variables.fridayOffset, variables.currentDate)>
		<cfset variables.firstOfThisMonth = createDate(year(variables.currentDate), month(variables.currentDate), 1)>
        <cfset variables.lastOfNextMonth = dateAdd("d", -1, dateAdd("m", 1, variables.firstOfThisMonth))>
		<cfset variables.lastOfNextMonth0 = dateAdd("d", -1, dateAdd("m", 1, variables.firstOfThisMonth))>
		<cfset variables.lastOfNextMonth1 = dateAdd("d", -2, dateAdd("m", 1, variables.firstOfThisMonth))>
		<cfset variables.lastOfNextMonth2 = dateAdd("d", -3, dateAdd("m", 1, variables.firstOfThisMonth))>
		<cfset variables.lastOfNextMonth3 = dateAdd("d", -4, dateAdd("m", 1, variables.firstOfThisMonth))>
		<cfset variables.lastOfNextMonth4 = dateAdd("d", -5, dateAdd("m", 1, variables.firstOfThisMonth))>
		<cfset variables.returnData = {
			"LastFridayDate" = variables.mostRecentFriday,
			"Lastdayofmonth" = variables.lastOfNextMonth,
			"lastOfNextMonth0" = variables.lastOfNextMonth0,
			"lastOfNextMonth1" = variables.lastOfNextMonth1,
			"lastOfNextMonth2" = variables.lastOfNextMonth2,
			"lastOfNextMonth3" = variables.lastOfNextMonth3,
			"lastOfNextMonth4" = variables.lastOfNextMonth4
		}>

		<cfreturn variables.returnData />
	</cffunction>
</cfcomponent>	 	 	

