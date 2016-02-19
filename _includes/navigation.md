{% assign chlist = site.chapters | where: "type","chapter" | sort: "level" %}
{% for chapter in chlist %}
{% assign tone="" %}
{% if chapter.title == page.title %}{% assign tone='red' %}{% endif %}
+ [{{ chapter.title }}]({{ chapter.url | prepend: site.baseurl }}){% endfor %}
+ {% for app in site.appendices %}[{{ app.title }}]({{ app.url | prepend: site.baseurl }}){% unless forloop.last %} | {% endunless %}{% endfor %}
{: .nav}
