<cfcomponent>  
	<cffunction access="public" name="task18">					
		<cfset variables.classLoader = createObject("java", "java.lang.Class")>
		<cfset variables.classLoader.forName("com.mysql.jdbc.Driver")>
		<cfset variables.driverManager = createObject("java","java.sql.DriverManager")>
		<cfset variables.connection = variables.driverManager.getConnection("jdbc:mysql://localhost:3306/cf28tasks?user=root")>
		<cfset variables.statement = variables.connection.createStatement()>  
		<cfset variables.resultSet = variables.statement.ExecuteQuery("SELECT * FROM userstask18")>
		<cfset variables.queryObj = createObject("java", "coldfusion.sql.QueryTable").init(variables.resultSet)>
		<cfset variables.connection.Close()>
		<cfreturn variables.queryObj />     		
	</cffunction>
</cfcomponent>
