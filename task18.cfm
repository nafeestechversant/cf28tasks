<cfset classLoader = createObject("java", "java.lang.Class")>
<cfset classLoader.forName("com.mysql.jdbc.Driver")>
<cfset driverManager = createObject("java","java.sql.DriverManager")>
<cfset connection = driverManager.getConnection("jdbc:mysql://localhost:3306/cf28tasks?user=root")>
<cfset statement = connection.createStatement()>     
<cfset resultSet = statement.ExecuteQuery("SELECT * FROM userstask18")>
<cfset queryObj = createObject("java", "coldfusion.sql.QueryTable").init(resultSet)>
<cfdump var="#queryObj#" label="User Table"/>
<cfset connection.Close()>