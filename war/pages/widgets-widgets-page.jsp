<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="centered_content">
	<h1>Page / Dialog</h1>
	<p>
		Coming from jquery mobile, in Horaz you define your different UIs in so
		called Pages (similar to Activity in Android). Dialogs are simply
		subclasses of Page, and so you use them in the same way.
	</p>

	<h3>Markup Convetion</h3>
	<p>
		This is simply a div-container with the <b>data-role="page"</b> or 
		<b>data-role="dialog"</b> attribute.
	</p>
	<p>
		For every page defined in your html file, you should create an own page
		class. There you have to call the super-constructor with the page-element.
		Generally this looks like:
	</p>
<pre style="color: rgb(0, 0, 0); background: none repeat scroll 0% 0% rgb(255, 255, 255);"><span style="color: rgb(128, 0, 0); font-weight: bold;">public</span> <span style="color: rgb(128, 0, 0); font-weight: bold;">class</span> TodoIndexPage <span style="color: rgb(128, 0, 0); font-weight: bold;">extends</span> Page <span style="color: rgb(128, 0, 128);">{</span>
    <span style="color: rgb(128, 0, 0); font-weight: bold;">public</span> TodoIndexPage<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(128, 128, 48);">)</span> <span style="color: rgb(128, 0, 128);">{</span>
        <span style="color: rgb(105, 105, 105);">// call super with the page element</span>
        <span style="color: rgb(128, 0, 0); font-weight: bold;">super</span><span style="color: rgb(128, 128, 48);">(</span>getElementById<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(0, 0, 230);">"page_index"</span><span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 0, 128);">;</span>

    <span style="color: rgb(128, 0, 128);">}</span>
<span style="color: rgb(128, 0, 128);">}</span>
</pre>
	<p>
		Then you have to initialise this in your EntryPoint.onCreate method.<br/>
		It's important that you create one, and only one, instance for your page.
	</p>

	<h2>PageManager</h2>
	<p>
		This helper class gives you a method <b>PageManager.changePage()</b> to
		programmatically switch between pages. You can also call the
		method <b>show()</b> from any Page object.
	</p>
</div>
