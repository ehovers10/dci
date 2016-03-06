{% for sect in sections %}
  [{{ sect }}]({{ sect | slugify | prepend: '#' }})
  {% if sect.size >= 2 %}
  {% for subsect in sect %}
  [{{ subsect }}]({{ subsect | slugify | prepend: '#' }})
  {% endfor %}
  {% endif %}
{% endfor %}
