<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfset myfile = FileRead("C:\ColdFusion2018\cfusion\wwwroot\cf28tasks\task26-textfile.txt") />
  <cfset stringInfo = application.tagCloud.addStringTask26(myfile) />
  <cfset getString = application.tagCloud.getStringTask26() />
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
</cfif>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
      <title>Task 26</title>
      <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
  </head>
  <body>
    <form id="" name="myform" method="post">
      <table width="75%" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center">
            <label for="fld_userEmail">File Path: <b>C:\ColdFusion2018\cfusion\wwwroot\cf28tasks\task26-textfile.txt</b></label>					
          </td>
          <td align="">
          </td>
        </tr>
        <tr>
          <td align="center">
            <input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" >
          </td>
       </tr>
      </table>
    </form>
  </body>
</html>