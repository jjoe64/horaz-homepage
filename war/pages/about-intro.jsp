<%@ page contentType="text/html;charset=UTF-8" language="java" %>

			<img class="intro" src="/res/content-intro.png" />
			<h1>Same App, Different Platforms, Different Look&Feel</h1>
			
			<div class="coding-example">
			
				<!-- code 1 -->
<pre style='color:#d1d1d1;background:#000000;'><span style='color:#9999a9; '>// get button</span>
Button btn = Button.byId("button")<span style='color:#d2cd86; '>;</span>

<span style='color:#9999a9; '>// set a tap (click) listener</span>
btn.addTapListener(new TapListener() <span style='color:#b060b0; '>{</span>
    <span style='color:#d2cd86; '>@</span>Override
    <span style='color:#e66170; font-weight:bold; '>public</span> <span style='color:#bb7977; '>void</span> onTap<span style='color:#d2cd86; '>(</span><span style='color:#bb7977; font-weight:bold; '>Event</span> event<span style='color:#d2cd86; '>)</span> <span style='color:#b060b0; '>{</span>
        <span style='color:#9999a9; '>// show the toast notification</span>
        <span style='color:#e66170; font-weight:bold; '>new</span> Toast<span style='color:#d2cd86; '>(</span><span style='color:#00c4c4; '>"I love Horaz!"</span><span style='color:#d2cd86; '>,</span>
            Duration<span style='color:#d2cd86; '>.</span>SHORT<span style='color:#d2cd86; '>)</span><span style='color:#d2cd86; '>.</span>show<span style='color:#d2cd86; '>(</span><span style='color:#d2cd86; '>)</span><span style='color:#b060b0; '>;</span>
    <span style='color:#b060b0; '>}</span>
<span style='color:#b060b0; '>}</span>)<span style='color:#d2cd86; '>;</span>
</pre>
				<!-- end code 1 -->
			
				<!-- code 2 -->
<pre style='color:#d1d1d1;background:#000000;'><span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>div</span> data-role<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"content"</span><span style='color:#ff8906; '>></span>
    <span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>p</span><span style='color:#ff8906; '>></span>This is a sample app<span style='color:#00a800; '>.</span><span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>p</span><span style='color:#ff8906; '>></span>
    <span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>a</span> data-role<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"button"</span> id<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"button"</span><span style='color:#ff8906; '>></span>
        Click me!
    <span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>a</span><span style='color:#ff8906; '>></span>
<span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>div</span><span style='color:#ff8906; '>></span>
</pre>
				<!-- end code 2 -->
			
			
			</div>
