<cfif NOT StructKeyExists(Session, "varStruct")>
  <cflock timeout=20 scope="Session" type="Exclusive">
    <cfset Session.varStruct = StructNew()>
  </cflock>
</cfif>
<cfif structKeyExists(form,'fld_FormSubmit')>
  <cfif structKeyExists(Session.varStruct, "#fld_userKey#") EQ "YES">
    <cfoutput><b>#fld_userKey#</b> already present Cannot add again</cfoutput>
  <cfelse>
    <cfset value=StructInsert(Session.varStruct, "#fld_userKey#", "#fld_userValue#")>
  </cfif>
</cfif>
<cfdump  var="#Session.varStruct#">
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Task 9</title>
</head>
  <body>
    <form id="" method="post">
      <table>
        <tr>
          <td>
            <label for="fld_userKey">Enter Key:</label>					
          </td>
          <td>
            <input name="fld_userKey" id="fld_userKey" required="true" />
          </td>
        </tr>
        <tr>
          <td>
             <label for="fld_userValue">Enter Value:</label>					
          </td>
          <td>
            <input name="fld_userValue" id="fld_userValue" required="true" />
          </td>
        </tr>
        <tr>
          <td>
            <input type="submit" name="fld_FormSubmit" value="Submit">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>