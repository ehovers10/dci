---
title: Dispute in discourse
level: 4
biblio: true
count:
  def: 1
  ex: 1
  obs: 1
  table: 1
references: ""
notes: footnotes/did.md
append:
  - Standard Plural Predication
  - Contrastive modification
  - Corrective update
js: [bunch,toc]
permalink: /practice/
---

{% for part in site.parts %}
{% if part.chapter contains "Dispute in discourse" %}
  + [{{ part.title }}](#{{ part.title | slugify }})
{% endif %}
{% endfor %}

{% for part in site.parts %}
{% if part.chapter contains "Dispute in discourse" %}
  <h1 id="{{ part.title | slugify }}">{{ part.title }}</h1>
  {{ part }}
{% endif %}
{% endfor %}

# Notes
{: .print-only}
{% include {{ page.notes }} %}
