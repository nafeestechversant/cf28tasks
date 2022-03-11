<cfset getString = application.tagCloud.getString() />
  <table border="1" width="400"> 
    <tr> 
      <th width="50%">Word</th> 
      <th>Count</th> 
    </tr>
    <cfloop query="getString"> 
      <cfif #getString.word_count# GTE 3>
        <cfset class="blueFt" > 
      <cfelseif #getString.word_count#  GTE 2 and getString.word_count LTE 3 >
        <cfset class="greenFt" > 
      <cfelse>
        <cfset class="redFt" > 
      </cfif>
        <cfoutput>
          <cfif len(trim(#getString.words#)) GTE 3>
            <tr class="#class#"> 
              <td>#getString.words#</td>
              <td>#getString.word_count#</td> 
            </tr>
          </cfif> 
        </cfoutput> 
    </cfloop>
  </table>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Task 25- 2</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
  </head>
  <body>
  </body>
</html>