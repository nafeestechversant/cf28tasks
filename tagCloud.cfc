<cfcomponent output="false">
  <!---addUser() method--->
	<cffunction name="addString" access="public" returntype="void">
    <cfargument name="userString" type="string" required="true" />
    <cfset variables.words = reMatch("[[:word:]]+", #arguments.userString#)>
    <cfset variables.wordCount = structNew()>
    <cfloop index="word" array="#variables.words#"> 
      <cfif structKeyExists(variables.wordCount, word)> 
        <cfset variables.wordCount[word]++> 
      <cfelse> 
        <cfset variables.wordCount[word] = 1> 
      </cfif> 
    </cfloop>
    <cfset variables.sorted = structSort(variables.wordCount)> 
      <cfloop index="word" array="#variables.sorted#"> 
        <cfquery>
          INSERT INTO task25 (words, word_count)
            VALUES ('#word#',#wordCount[word]#)
        </cfquery>  
      </cfloop>     
  </cffunction>

  <cffunction name="getString" access="public" output="false" returntype="query">		
			<cfquery name="rs_getString">
        SELECT words,word_count FROM task25 ORDER BY word_count DESC, words ASC
			</cfquery>
			<cfreturn rs_getString />
	</cffunction>

   <cffunction name="addStringTask26" access="public" returntype="void">
      <cfargument name="userString" type="string" required="true" />
      <cfset variables.words = reMatch("[[:word:]]+", #arguments.userString#)>
      <cfset variables.wordCount = structNew()>
      <cfloop index="word" array="#variables.words#"> 
        <cfif structKeyExists(variables.wordCount, word)> 
          <cfset variables.wordCount[word]++> 
        <cfelse> 
          <cfset variables.wordCount[word] = 1> 
        </cfif> 
      </cfloop>
      <cfset variables.sorted = structSort(variables.wordCount)> 
        <cfloop index="word" array="#variables.sorted#"> 
          <cfquery>
            INSERT INTO task26 (words, word_count)
              VALUES ('#word#',#wordCount[word]#)
          </cfquery>  
        </cfloop>     
    </cffunction>

  <cffunction name="getStringTask26" access="public" output="false" returntype="query">		
			<cfquery name="rs_getString">
        SELECT words,word_count FROM task26 ORDER BY word_count DESC, words ASC
			</cfquery>
			<cfreturn rs_getString />
	</cffunction>

</cfcomponent>
