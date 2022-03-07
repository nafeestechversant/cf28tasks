<cfif structKeyExists(form,'fld_FormSubmit')>

<cfscript>
myfile = FileRead("C:\ColdFusion2018\cfusion\wwwroot\cf28tasks\task26-textfile.txt");
</cfscript>

<cfset stringInfo = application.tagCloud.addString(myfile) />
<cfset sorted = structSort(stringInfo)>

<cfloop index="word" array="#sorted#"> 
  <cfquery  >
   INSERT INTO task26 (words, word_count)
			VALUES ('#word#',#stringInfo[word]#)
		</cfquery>  
  </cfloop>

  <cfquery name="getString" >
     SELECT words,word_count FROM task26 ORDER BY word_count DESC, words ASC
  </cfquery>
    <table border="1" width="400"> 
      <tr> 
        <th width="50%">Word</th> 
        <th>Count</th> 
      </tr>
      <cfloop query="getString"> 
          <cfif #getString.word_count# GTE 3>
              <cfset style="color:blue;font-size:25pt;" > 
            <cfelseif #getString.word_count#  GTE 2 and getString.word_count LTE 3 >
              <cfset style="color:green;font-size:20pt;" > 
            <cfelse>
              <cfset style="color:red;font-size:15pt;" > 
          </cfif>
        <cfoutput>
        <cfif len(trim(#getString.words#)) GTE 3>
        <tr style="#style#"> <td>#getString.words#</td>
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
<cfajaximport>
</head>
<body>
<p id="erroeMsg" style='color: red'></p>
<form id="" name="myform" method="post">
<table width="75%" cellpadding="0" cellspacing="0">
 
  <tr><td align="center">
   <label for="fld_userEmail">File Path: <b>C:\ColdFusion2018\cfusion\wwwroot\cf28tasks\task26-textfile.txt</b></label>					
 </td>
 <td align="">

 </td>

 </tr>
  <tr><td align="center"><input type="submit" id="fld_FormSubmit" name="fld_FormSubmit" value="Submit" >
  </td>
  </tr>
 </table>
</form>



</body>
</html>