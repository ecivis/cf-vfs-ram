<cfcomponent>

	<cfset this.name = "sampleApp"/>
	<cfset this.applicationTimeout = createTimeSpan(0, 0, 0, 5)/>
	<cfset this.sessionManagement = false/>
	<cfset this.clientManagement = false/>
	<cfset this.mappings = structNew()/>
	<cfset this.mappings["/inmemory"] = "ram:///"/>

	<cffunction name="onApplicationStart" output="true">
		<cfoutput><p>Starting application</p></cfoutput>
	</cffunction>

	<cffunction name="onRequestStart" output="true">
		<cfargument name="targetPage" type="string" required="true"/>
		
	</cffunction>

</cfcomponent>