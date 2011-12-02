<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<img src="/res/widgets/listview-comp.png" width="600" class="intro" />

<div class="centered_content">
	<h3>Markup Convestion</h3>
	<p>
		Lists are used for data display, navigation, result lists, and data entry. In Horaz it is possible to connect the ListView with a <strong>DataStore</strong>, so the data can be dynamically change (add, remove, update).
		When you use the ListView dynamically with a <strong>DataStore</strong>, you have to define a <strong>template</strong>.
	</p>
	<hr/>
	<p>
		A list view is coded as a simple unordered list containing list items
		with a <strong>data-role="listview"</strong> attribute. If you use the ListView
		dynamically you have to set the ID of the template-container
		with a <strong>data-template="TEMPLATE_ID"</strong> attribute.
	</p>
	<pre><span style="color: rgb(128, 128, 48);">&lt;</span>ul id<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">list_todo</span><span style="color: rgb(128, 0, 0);">"</span> data<span style="color: rgb(128, 128, 48);">-</span>role<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">listview</span><span style="color: rgb(128, 0, 0);">"</span> data<span style="color: rgb(128, 128, 48);">-</span>inset<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">true</span><span style="color: rgb(128, 0, 0);">"</span> data<span style="color: rgb(128, 128, 48);">-</span>template<span style="color: rgb(128, 128, 48);">=</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(0, 0, 230);">list_todo_template</span><span style="color: rgb(128, 0, 0);">"</span><span style="color: rgb(128, 128, 48);">&gt;</span><span style="color: rgb(128, 128, 48);">&lt;</span><span style="color: rgb(128, 128, 48);">/</span>ul<span style="color: rgb(128, 128, 48);">&gt;</span></pre>
	
	<h3>Templates</h3>
	<p>
		Every ListView, that uses a DataStore, needs a template. You have to create
		a container (div) with a explicit ID. This ID must be set in the data-template
		attribute of the ul-element.
	</p>
	<p>
		When the ListView creates a new list item, it parses the innerHTML of the
		template-div and replaces every placeholder with the value of the field
		in the model. The syntax for a placeholder is always <strong>{#FIELD_NAME#}</strong>.<br/>
		For example:
	</p>
</div>
<div class="coding-example">
	<!-- code 1 -->
<pre style='color:#d1d1d1;background:#000000;'><span style='color:#9999a9; '>&lt;!-- template --></span>
<span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>div</span> id<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"list_todo_template"</span> style<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"</span><span style='color:#904050; '>display</span><span style='color:#d2cd86; '>:</span>none<span style='color:#00c4c4; '>"</span><span style='color:#ff8906; '>></span>
    <span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>a</span> href<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"#dialog_item"</span><span style='color:#ff8906; '>></span>
        <span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>h2</span><span style='color:#ff8906; '>></span>{#title#}<span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>h2</span><span style='color:#ff8906; '>></span>
        <span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>p</span><span style='color:#ff8906; '>></span>{#notes#}<span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>p</span><span style='color:#ff8906; '>></span>
    <span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>a</span><span style='color:#ff8906; '>></span>
<span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>div</span><span style='color:#ff8906; '>></span>
<span style='color:#ff8906; '>&lt;</span><span style='color:#e66170; font-weight:bold; '>ul</span> id<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"list_todo"</span> data-role<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"listview"</span>
  data-inset<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"true"</span> data-template<span style='color:#d2cd86; '>=</span><span style='color:#00c4c4; '>"list_todo_template"</span><span style='color:#ff8906; '>></span><span style='color:#ff8906; '>&lt;/</span><span style='color:#e66170; font-weight:bold; '>ul</span><span style='color:#ff8906; '>></span>
</pre>
	<!-- end code 1 -->
	<!-- code 2 -->
<pre style='color:#d1d1d1;background:#000000;'>
ListView<span style='color:#d2cd86; '>&lt;</span>TodoItem<span style='color:#d2cd86; '>></span> listTodo <span style='color:#d2cd86; '>=</span> ListView<span style='color:#d2cd86; '>.</span>byId<span style='color:#d2cd86; '>(</span><span style='color:#00c4c4; '>"list_todo"</span><span style='color:#d2cd86; '>)</span><span style='color:#b060b0; '>;</span>
DataStore<span style='color:#d2cd86; '>&lt;</span>TodoItem<span style='color:#d2cd86; '>></span> datastore <span style='color:#d2cd86; '>=</span> <span style='color:#e66170; font-weight:bold; '>new</span> SimpleDataStore<span style='color:#d2cd86; '>&lt;</span>TodoItem<span style='color:#d2cd86; '>></span><span style='color:#d2cd86; '>(</span><span style='color:#d2cd86; '>)</span><span style='color:#b060b0; '>;</span>
listTodo<span style='color:#d2cd86; '>.</span>setDataStore<span style='color:#d2cd86; '>(</span>datastore<span style='color:#d2cd86; '>)</span><span style='color:#b060b0; '>;</span>
</pre>
	<!-- end code 2 -->
</div>

<div class="centered_content">
	<h3>Item Click Event</h3>
	<p>
		When a item was clicked in the listview, this event will be fired.
		It refers to the corresponding model.
	</p>
<pre style="color: rgb(0, 0, 0); background: none repeat scroll 0% 0% rgb(255, 255, 255);">listview<span style="color: rgb(128, 128, 48);">.</span>addItemClickListener<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(128, 0, 0); font-weight: bold;">new</span> ItemClickListener<span style="color: rgb(128, 128, 48);">&lt;</span>TodoItem<span style="color: rgb(128, 128, 48);">&gt;</span><span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(128, 128, 48);">)</span> <span style="color: rgb(128, 0, 128);">{</span>

    <span style="color: rgb(128, 128, 48);">@</span>Override
    <span style="color: rgb(128, 0, 0); font-weight: bold;">public</span> <span style="color: rgb(187, 121, 119);">void</span> onItemClick<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(187, 121, 119); font-weight: bold;">Event</span> event<span style="color: rgb(128, 128, 48);">,</span> TodoItem item<span style="color: rgb(128, 128, 48);">)</span> <span style="color: rgb(128, 0, 128);">{</span>

        <span style="color: rgb(187, 121, 119); font-weight: bold;">Window</span><span style="color: rgb(128, 128, 48);">.</span>alert<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(0, 0, 230);">"item was clicked: "</span><span style="color: rgb(128, 128, 48);">+</span>item<span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 0, 128);">;</span>
    <span style="color: rgb(128, 0, 128);">}</span>
<span style="color: rgb(128, 0, 128);">}</span><span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 0, 128);">;</span></pre>

	<h3>Item Apply Event</h3>
	<p>
		If you have to do some special formatting or layouting on some explicit
		models, there is hook for manipulating the new li-element that was created from
		the template.
	</p>
	<p>
		The ItemApplyEvent catches the listview applyItem hook. The event will be
		fired if any li-element was created from template.
	</p>
<pre style="color: rgb(0, 0, 0); background: none repeat scroll 0% 0% rgb(255, 255, 255);">listTodo<span style="color: rgb(128, 128, 48);">.</span>addItemApplyListener<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(128, 0, 0); font-weight: bold;">new</span> ItemApplyListener<span style="color: rgb(128, 128, 48);">&lt;</span>TodoItem<span style="color: rgb(128, 128, 48);">&gt;</span><span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(128, 128, 48);">)</span> <span style="color: rgb(128, 0, 128);">{</span>

    <span style="color: rgb(128, 128, 48);">@</span>Override
    <span style="color: rgb(128, 0, 0); font-weight: bold;">public</span> <span style="color: rgb(187, 121, 119);">void</span> onItemApply<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(187, 121, 119); font-weight: bold;">Event</span> event<span style="color: rgb(128, 128, 48);">,</span> LIElement liElement<span style="color: rgb(128, 128, 48);">,</span> TodoItem model<span style="color: rgb(128, 128, 48);">)</span> <span style="color: rgb(128, 0, 128);">{</span>

        <span style="color: rgb(128, 0, 0); font-weight: bold;">if</span> <span style="color: rgb(128, 128, 48);">(</span>model<span style="color: rgb(128, 128, 48);">.</span>isDone<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 128, 48);">)</span> <span style="color: rgb(128, 0, 128);">{</span>
            liElement<span style="color: rgb(128, 128, 48);">.</span>addClassName<span style="color: rgb(128, 128, 48);">(</span><span style="color: rgb(0, 0, 230);">"done"</span><span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 0, 128);">;</span>

        <span style="color: rgb(128, 0, 128);">}</span>
    <span style="color: rgb(128, 0, 128);">}</span>
<span style="color: rgb(128, 0, 128);">}</span><span style="color: rgb(128, 128, 48);">)</span><span style="color: rgb(128, 0, 128);">;</span>
</pre>
	<h3>More</h3>
	<p>
		<a href="http://jquerymobile.com/demos/1.0a4.1/#docs/lists/index.html">http://jquerymobile.com/demos/1.0a4.1/#docs/lists/index.html</a>
	</p>
</div>