<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<img src="/res/widgets/button-comp.png" width="600" class="intro" />

<div class="centered_content">
	<h3>Markup Convestion</h3>
	<p>
		In the main content block of a page, you can style any anchor link as a button by adding the <b>data-role="button"</b> to the link.
		The framework will add all necessary classes to style the link as a button. For example, this markup:
	</p>
	<pre style="color: rgb(0, 0, 0); background: none repeat scroll 0% 0% rgb(255, 255, 255);"><span style="color: rgb(128, 128, 48);">&lt;</span>a href<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">#page_new</span><span style="color: rgb(128, 0, 0);">"</span> data<span style="color: rgb(128, 128, 48);">-</span>role<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">button</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(128, 128, 48);">&gt;</span>Link button<span style="color: rgb(128, 128, 48);">&lt;</span><span style="color: rgb(128, 128, 48);">/</span>a<span style="color: rgb(128, 128, 48);">&gt;</span></pre>
	
	<h3>Click Event Handler</h3>
	<p>
		To add a click/tap event handler, you have to add a new implementation of a TapListener interface:
	</p>
</div>
<div class="coding-example">
	<!-- code 1 -->
<pre style='color:#d1d1d1;background:#000000;'>Button btnNew = Button.byId("btn_new")<span style='color:#d2cd86; '>;</span>
btnNew.addTapListener(new TapListener() <span style='color:#b060b0; '>{</span>
   <span style='color:#d2cd86; '>@</span>Override
   <span style='color:#e66170; font-weight:bold; '>public</span> <span style='color:#bb7977; '>void</span> onTap<span style='color:#d2cd86; '>(</span><span style='color:#bb7977; font-weight:bold; '>Event</span> event<span style='color:#d2cd86; '>)</span> <span style='color:#b060b0; '>{</span>
       <span style='color:#9999a9; '>// do something...</span>
   <span style='color:#b060b0; '>}</span>
<span style='color:#b060b0; '>}</span>)<span style='color:#d2cd86; '>;</span>
</pre>
		<!-- end code 1 -->
	<!-- code 2 -->
<pre style='color:#d1d1d1;background:#000000;'><span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>a</span> id<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"new_btn"</span> data-role<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"button"</span><span style='color:#ff8906; '>></span>Link button<span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>a</span><span style='color:#ff8906; '>></span>
</pre>
		<!-- end code 2 -->
</div>
<div class="centered_content">
	<p class="important">
		When you use a tapListener, the anchor must NOT have a href-attribute! if you want to do a redirect use Window.Location.replace(String) instead.
	</p>
</div>
<div class="centered_content">
	<h3>Icons</h3>
	<p>
		The jQuery Mobile framework includes a selected set of icons most often needed for
		mobile apps. To minimize download size, jQuery Mobile includes a single white icon
		sprite, and automatically adds a semi-transparent black circle behind the icon to ensure
		that it has good contrast on any background color.
	</p>
	<p>
		An icon can be added to a button by adding a data-icon attribute on the anchor
		specifying the icon to display. For example, the following markup:
	</p>
	<pre style="color: rgb(0, 0, 0); background: none repeat scroll 0% 0% rgb(255, 255, 255);"><span style="color: rgb(128, 128, 48);">&lt;</span>a id<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">buttonDelete</span><span style="color: rgb(128, 0, 0);">"</span> data<span style="color: rgb(128, 128, 48);">-</span>role<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">button</span><span style="color: rgb(128, 0, 0);">"</span> data<span style="color: rgb(128, 128, 48);">-</span>icon<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">delete</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(128, 128, 48);">&gt;</span>Delete<span style="color: rgb(128, 128, 48);">&lt;</span><span style="color: rgb(128, 128, 48);">/</span>a<span style="color: rgb(128, 128, 48);">&gt;</span></pre>
	<img src="/res/widgets/button-icons.png" class="intro" />
	
	<h3>More Information</h3>
	<a href="http://jquerymobile.com/demos/1.0a4.1/#docs/buttons/index.html" target="_blank">
		http://jquerymobile.com/demos/1.0a4.1/#docs/buttons/index.html
	</a>
</div>
