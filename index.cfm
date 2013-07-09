<cfsilent>
	<cfset fileContent = "foobarboobaz"/>
</cfsilent>
<cfoutput>

	<cfdump var="#getVFSMetaData('ram')#"/>

	<cfif not fileExists("ram:///foo")>
		<p>File ram:///foo does not exist. Creating...</p>
		<cffile action="write" file="ram:///foo" output="#fileContent#"/>
	<cfelse>
		<p>File ram:///foo exists.</p>
	</cfif>

	<cfdump var="#getFileInfo('ram:///foo')#"/>

	<cfdirectory action="list" directory="ram:///" name="files" recurse="yes"/>
	<cfdump var="#files#"/>


	<cfif not fileExists(expandPath("/inmemory/foo"))>
		<p>File /inmemory/foo does not exist. Creating...</p>
		<cffile action="write" file="#expandPath('/inmemory/foo')#" output="#fileContent#"/>
	<cfelse>
		<p>File /inmemory/foo exists.</p>
	</cfif>

	<cfdirectory action="list" directory="#expandPath('/inmemory')#" name="files" recurse="yes"/>
	<cfdump var="#files#"/>

</cfoutput>