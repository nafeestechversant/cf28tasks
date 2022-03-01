
<cffunction access="public" name="mulitiply">
		<cfargument name="arg1" type="Numeric" required />
		<cfargument name="arg2" type="Numeric" required />
    <cfargument name="arg3" type="Numeric" />
    <cfargument name="arg4" type="Numeric" />
    <cfif isDefined("arg4")>
      <cfset multiple = arg1 * arg2 * arg3 * arg4 />
      <cfelseif isDefined("arg3")>
      <cfset multiple = arg1 * arg2 * arg3  />
      <cfelse>
       <cfset multiple = arg1 * arg2 />
    </cfif>
    
	 	<cfreturn multiple />
</cffunction>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 11</title>
</head>
<body>
<cfform id="">
<table width="75%" cellpadding="0" cellspacing="0">
 <tr>
 <cfset res = mulitiply(1,2)>
<cfdump var="#res#"><br>
 <cfset res = mulitiply(1,2,3)>
<cfdump var="#res#"><br>
<cfset res = mulitiply(1,2,3,4)>
<cfdump var="#res#">
 </tr>
 </table>
</cfform>
</body>
</html>