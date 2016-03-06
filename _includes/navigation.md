{% assign chlist = site.chapters | where: "type","chapter" | sort: "level" %}
<ul class="nav">
<li>{{ site.title | append: '<br />by ' | append: site.author }}</li>
<li><a href="{{ '/toc.html' | prepend: site.baseurl }}">Table of contents</a></li>
<li><a href="#" id="chap" class="open">Chapters</a></li>
<ul class="nav2 hid" id="chap-hid">
{% for chapter in chlist %}
<li><a href="{{ chapter.url | prepend: site.baseurl }}">{{ chapter.title }}</a></li>
{% endfor %}
</ul>
<li><a href="#" id="appen" class="open">Appendices</a></li> 
<ul class="nav2 hid" id="appen-hid">
{% for app in site.appendices %}
<li><a href="{{ app.url | prepend: site.baseurl }}">{{ app.title }}</a></li>
{% endfor %}
</ul>
</ul>
