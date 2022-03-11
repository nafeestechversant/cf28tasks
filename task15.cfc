<cfcomponent>
  <cffunction name="Multiply"> 
    <cfset result = 1>   
      <cfloop collection="#Arguments#" item="argument">    
        <cfset result = result * Arguments[argument]>  
      </cfloop> 
      <cfreturn result> 
  </cffunction>   
</cfcomponent>
