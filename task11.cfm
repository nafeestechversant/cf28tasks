<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 11</title>
    </head>
      <body>
        <table>
          <tr>
            <cfset variables.res = application.task11.mulitiply(1,2)>
            <cfdump var="#variables.res#"><br>
            <cfset variables.res = application.task11.mulitiply(1,2,3)>
            <cfdump var="#variables.res#"><br>
            <cfset variables.res = application.task11.mulitiply(1,2,3,4)>
            <cfdump var="#variables.res#">
          </tr>
        </table>
      </body>
</html>