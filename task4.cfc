<cfcomponent>
	<cffunction access="public" name="task4">
		<cfset currentDate = Now() /> 		
		<cfset todaydayOfWeek = dayOfWeek(currentDate)>
		<cfset fridayOffset = (6-todaydayOfWeek)-7>
		<cfset mostRecentFriday = dateAdd("d", fridayOffset, currentDate)>

		<cfset firstOfThisMonth = createDate(year(currentDate), month(currentDate), 1)>
        <cfset lastOfNextMonth = dateAdd("d", -1, dateAdd("m", 1, firstOfThisMonth))>

		<cfset lastOfNextMonth0 = dateAdd("d", -1, dateAdd("m", 1, firstOfThisMonth))>
		<cfset lastOfNextMonth1 = dateAdd("d", -2, dateAdd("m", 1, firstOfThisMonth))>
		<cfset lastOfNextMonth2 = dateAdd("d", -3, dateAdd("m", 1, firstOfThisMonth))>
		<cfset lastOfNextMonth3 = dateAdd("d", -4, dateAdd("m", 1, firstOfThisMonth))>
		<cfset lastOfNextMonth4 = dateAdd("d", -5, dateAdd("m", 1, firstOfThisMonth))>

		<cfset returnData = {
			"LastFridayDate" = mostRecentFriday,
			"Lastdayofmonth" = lastOfNextMonth,
			"lastOfNextMonth0" = lastOfNextMonth0,
			"lastOfNextMonth1" = lastOfNextMonth1,
			"lastOfNextMonth2" = lastOfNextMonth2,
			"lastOfNextMonth3" = lastOfNextMonth3,
			"lastOfNextMonth4" = lastOfNextMonth4
		}>

		<cfreturn returnData />
	</cffunction>
</cfcomponent>	 	 	

