<cfinvoke component="task15" method="Multiply" returnvariable="result">
  <cfinvokeargument name="m1" value="1"/> 
    <cfinvokeargument name="m2" value="2"/> 
    <cfinvokeargument name="m3" value="3"/> 
    <cfinvokeargument name="m4" value="4"/> 
    <cfinvokeargument name="m5" value="5"/>
</cfinvoke>
    <cfoutput>cfinvoke  : #result#</cfoutput><br>
      <cfobject name="objMultiply" component="task15">
        <cfinvoke component="#objMultiply#" method="Multiply">
          <cfoutput>cfobject  : #objMultiply.Multiply(1,2,3,4)#</cfoutput><br>
            <cfscript>
              creatObj=createObject("component","task15"); 
            </cfscript>
          <cfoutput>createobject : #creatObj.Multiply(1,2,3)#</cfoutput>