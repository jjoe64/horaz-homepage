<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="centered_content">
	<h1>Get started with "Hello World"</h1>
	<p>We recommend to use Eclipse IDE. This article describes how to get started developing with Horaz in Eclipse.</p>
	
	<h3>Step 1: Download &amp; Install</h3>
	<ul><li>Download and Install Eclipse IDE<br>
	<a href="http://www.eclipse.org/">http://www.eclipse.org/</a></li>
	<li>Install GWT Plugin for Eclipse<br>
	<a href="http://code.google.com/intl/de-DE/eclipse/docs/getting_started.html">http://code.google.com/intl/de-DE/eclipse/docs/getting_started.html</a></li>
	<li><a href="http://code.google.com/intl/de-DE/eclipse/docs/getting_started.html"></a>Download latest Horaz</li></ul>
	
	<h3>Step 2: Clone Hello World Project</h3>
	<ul><li>Install git</li><li>Clone&nbsp;<a href="https://github.com/jjoe64/horaz-helloworld">https://github.com/jjoe64/horaz-helloworld</a><br><font face="'courier new', monospace">git clone&nbsp;<a href="https://github.com/jjoe64/horaz-helloworld">https://github.com/jjoe64/horaz-helloworld</a></font></li><li>Import this project into Eclipse</li></ul>
	
	<h3>Step 3: Compile &amp; Run on a device</h3>
	<ul><li>Create a project with phonegap</li><ul><li><a href="http://www.phonegap.com/">http://www.phonegap.com/</a></li></ul><li>Open the Horaz project in Eclipse</li><li>Right-click on the project</li><ul><li>Google -&gt; GWT compile</li><li>Compile</li></ul><li>When the compilation has finished, the folder war/horaz_helloworld is created</li><li>Copy the folder war/horaz_helloworld, war/Horaz_helloworld.css, war/Horaz_helloworld.html and war/jquery into the web-folder of your phonegap project</li><li>Make sure that the phonegap app opens Horaz_helloworld.html or rename this to index.html</li></ul>
	
	<br/>
	<hr/>
	<p>We are currently working on a more agile way to create a Horaz project.</p>
</div>