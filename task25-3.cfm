<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Task 25- 2</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
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
          <cfif variables.getString.word_count GTE 3>
            <cfset variables.classname="blueFt" > 
          <cfelseif variables.getString.word_count  GTE 2 and variables.getString.word_count LTE 3 >
            <cfset variables.classname="greenFt" > 
          <cfelse>
            <cfset variables.classname="redFt" > 
          </cfif>            
              <cfif len(trim(variables.getString.words)) GTE 3>
                <tr class="#variables.classname#"> 
                  <td>#variables.getString.words#</td>
                  <td>#variables.getString.word_count#</td> 
                </tr>
              </cfif>             
        </cfloop>
      </table>
    </cfoutput>
  </body>
</html>