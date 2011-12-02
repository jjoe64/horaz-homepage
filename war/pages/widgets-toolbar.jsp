<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="centered_content">
	<h1>Toolbars</h1>
	<p>
		There are two types of toolbars:
		<ol>
			<li>
				<b>Header</b><br>
				The Header bar serves as the page title, is usually the first element inside
				each mobile page, and typically contains a page title and up to two buttons.
			</li>
			<li>
				<b>Footer</b><br>
				The Footer bar is usually the last element inside each mobile page,
				and tends to be more freeform than the header in terms of content and
				functionality, but typically contains a combination of text and buttons.
			</li>
		</ol>
	</p>
	
	<h3>Fixed position</h3>
	<p>
		Generally, you should use the header/footer in fixed position (<b>data-position="fixed"</b>).
		In Horaz, the fixed position behaives not like in jQuery mobile. In Horaz
		the header will always be on the top and the footer always at
		the bottom. There's no fade in or out effect if the page scrolls.
	</p>
	
	<pre style="color: rgb(0, 0, 0); background: none repeat scroll 0% 0% rgb(255, 255, 255);"><span style="color: rgb(166, 87, 0);">&lt;</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(39, 71, 150);"> </span><span style="color: rgb(7, 71, 38);">data</span><span style="color: rgb(39, 71, 150);">-role</span><span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(0, 0, 230);">"page"</span><span style="color: rgb(166, 87, 0);">&gt;</span>
	    <span style="color: rgb(166, 87, 0);">&lt;</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(39, 71, 150);"> </span><span style="color: rgb(7, 71, 38);">data</span><span style="color: rgb(39, 71, 150);">-role</span><span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(0, 0, 230);">"header"</span><span style="color: rgb(39, 71, 150);"> </span><span style="color: rgb(7, 71, 38);">data</span><span style="color: rgb(39, 71, 150);">-position</span><span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(0, 0, 230);">"fixed"</span><span style="color: rgb(166, 87, 0);">&gt;</span><span style="color: rgb(166, 87, 0);">&lt;/</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(166, 87, 0);">&gt;</span>
	
	    <span style="color: rgb(166, 87, 0);">&lt;</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(39, 71, 150);"> </span><span style="color: rgb(7, 71, 38);">data</span><span style="color: rgb(39, 71, 150);">-role</span><span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(0, 0, 230);">"content"</span><span style="color: rgb(166, 87, 0);">&gt;</span><span style="color: rgb(166, 87, 0);">&lt;/</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(166, 87, 0);">&gt;</span>
	    <span style="color: rgb(166, 87, 0);">&lt;</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(39, 71, 150);"> </span><span style="color: rgb(7, 71, 38);">data</span><span style="color: rgb(39, 71, 150);">-role</span><span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(0, 0, 230);">"footer"</span><span style="color: rgb(39, 71, 150);"> </span><span style="color: rgb(7, 71, 38);">data</span><span style="color: rgb(39, 71, 150);">-position</span><span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(0, 0, 230);">"fixed"</span><span style="color: rgb(166, 87, 0);">&gt;</span><span style="color: rgb(166, 87, 0);">&lt;/</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(166, 87, 0);">&gt;</span>
	
	<span style="color: rgb(166, 87, 0);">&lt;/</span><span style="color: rgb(128, 0, 0); font-weight: bold;">div</span><span style="color: rgb(166, 87, 0);">&gt;</span></pre>
	
	<h3>Hide Back Button on Android</h3>
	<p>
		Sometimes you need to hide the 'back' button on Android devices.
	</p>
	<p>
		<ul>
			<li>
				<b>hide-on-android</b> css class: use this class, to hide some elements
				on android devices (e.g. header back button)
			</li>
		</ul>
	</p>
</div>
