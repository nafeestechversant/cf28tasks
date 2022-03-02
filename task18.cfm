<cfset classLoader = createObject("java", "java.lang.Class")>
<cfset classLoader.forName("com.mysql.jdbc.Driver")>

<cfset driverManager = createObject("java","java.sql.DriverManager")>

<!--- Create the connection to the DB --->
<cfset connection = driverManager.getConnection(
   "jdbc:mysql://localhost:3306/cf28tasks?user=root")>

<cfset statement = connection.createStatement()>     
<cfset insertSet = statement.executeUpdate("INSERT INTO userstask18 (Name, email) VALUES ('Nafees', 'nafees@mail.com')")> 
<cfset resultSet = statement.ExecuteQuery("SELECT * FROM userstask18")>

<cfset queryObj = createObject("java", "coldfusion.sql.QueryTable").init(resultSet)>

<cfdump var="#queryObj#" label="User Table"/>
<cfset connection.Close()>




<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 18</title>
</head>
<body>
<form id="">
<p id="error"></p>
<p id="demo"></p>
<table width="75%" cellpadding="0" cellspacing="0">
 </table>
</form>

</body>
</html>