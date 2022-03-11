<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8" />
        <title>Task 11</title>
    </head>
      <body>
        <table>
          <tr>
            <cfset res = application.task11.mulitiply(1,2)>
            <cfdump var="#res#"><br>
            <cfset res = application.task11.mulitiply(1,2,3)>
            <cfdump var="#res#"><br>
            <cfset res = application.task11.mulitiply(1,2,3,4)>
            <cfdump var="#res#">
          </tr>
        </table>
      </body>
</html>