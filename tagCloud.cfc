<cfcomponent output="false">
  <!---addUser() method--->
	<cffunction name="addString" access="public" returntype="struct">
  <cfargument name="userString" type="string" required="true" />
   
   <cfset words = reMatch("[[:word:]]+", #arguments.userString#)>
    <cfset wordCount = structNew()>
    <cfloop index="word" array="#words#"> 
    <cfif structKeyExists(wordCount, word)> 
    <cfset wordCount[word]++> 
    <cfelse> 
    <cfset wordCount[word] = 1> 
    </cfif> 
    </cfloop>   

   <cfreturn wordCount> 
  </cffunction>

</cfcomponent>
