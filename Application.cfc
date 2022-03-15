<!-- Set the value of MyDatabase to be the name you published the database under -->
<cfcomponent output="false">
    <cfset this.name = 'CF 28 Task' />
	<cfset this.applicationTimeout = createtimespan(0,2,0,0) />    
    <cfset this.datasource = 'cf28tasks' /> 
	<cfset this.sessionManagement = true />
	<cfset this.sessionTimeout = createTimespan(0,0,30,0) />  
	

    <!---OnApplicationStart() method--->
	<cffunction name="onApplicationStart" returntype="boolean" >	

		<cfset application.task1 = createObject("component",'task1') />
		<cfset application.task2 = createObject("component",'task2') />	
		<cfset application.task3 = createObject("component",'task3') />	
		<cfset application.task4 = createObject("component",'task4') />	
		<cfset application.task5 = createObject("component",'task5') />	
		<cfset application.task6 = createObject("component",'task6') />
		<cfset application.utils = createObject("component",'utils') />
		<cfset application.task23 = createObject("component",'task23') />
		<cfset application.tagCloud = createObject("component",'tagCloud') />
		<cfset application.task11 = createObject("component",'task11') />
		<cfset application.task12 = createObject("component",'task12') />
		<cfset application.task24 = createObject("component",'task24') />
		<cfset application.task27 = createObject("component",'task27') />
		<cfset application.task28 = createObject("component",'task28') />
		<cfset application.myglobalvariable = structNew()>
		<cfreturn true />
	</cffunction>

    <!---onRequestStart() method--->
	<cffunction name="onRequestStart" returntype="boolean" >
		<cfargument name="targetPage" type="string" required="true" />
		<!---handle some special URL parameters--->
		<cfif isDefined('url.restartApp')>
			<cfset this.onApplicationStart() />
		</cfif>		
		<cfreturn true />
	</cffunction>
</cfcomponent>
