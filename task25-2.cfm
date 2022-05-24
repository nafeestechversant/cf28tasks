<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Task 25- 2</title>
</head>
  <body>
    <cfoutput>
      <cfinvoke component="tagCloud" method="getString" returnvariable="getString"></cfinvoke>      
      <table border="1" width="400"> 
        <tr> 
          <th width="50%">Word</th> 
          <th>Count</th> 
        </tr>
          <cfloop query="variables.getString">             
              <cfif len(trim(#getString.words#)) GTE 3>
                <tr> 
                  <td>#variables.getString.words#</td>
                  <td>#variables.getString.word_count#</td> 
                </tr>
              </cfif>              
          </cfloop>
      </table>
    </cfoutput>
  </body>
</html>