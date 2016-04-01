---
title: Predication in <strong>CU</strong>
layout: table
---

## A model

{% capture gus %}{% include_relative model.md %}{% endcapture %}
{{ gus | markdownify }}

## Predicates

<!-- Bears -->
<table class="relation">
<tr>
  <td class="label" colspan="3">{% include sem.html term='<em>bears</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b|e" attr2="+|+|+" %}
{% include keylist.html key="s<sub>2</sub>" attr1="a|b|c|d" attr2="+|+|+|+" %}
{% include keylist.html key="s<sub>3</sub>" attr1="a" attr2="+" %}

<tr>
  <td class="label" colspan="3"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Dangerous -->
<table class="relation">
<tr>
  <td class="label" colspan="3">{% include sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="+|+|+" %}
{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" %}
{% include keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="+|+" %}

<tr>
  <td class="label" colspan="3"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Grizzly -->
<table class="relation">
<tr>
  <td class="label" colspan="3">{% include sem.html term='<em>grizzly</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|grizzly" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a" attr2="+" %}
{% include keylist.html key="s<sub>2</sub>" attr1="a|c" attr2="+|+" %}
{% include keylist.html key="s<sub>3</sub>" attr1="a|e" attr2="+|+" %}

<tr>
  <td class="label" colspan="3"><strong>&#10649;</strong></td>
</tr>
</table>

<!--------------------------------------------->
<div style="clear:both;"></div>

## Standard plural predication

{% include bad/index.html rows="7" %}

<!------------------------------------------>
<div style="clear:both;"></div>

## Contrastive modification

<!-- introduce alt set, full outer join, overwrite -->
{% include sem.html term='<em>[Grizzly]<sub>cf</sub> bears</em>' model="M" %} = PROJ({**sit**,**ent**,**type &#x21a6; bear**}, {% include sem.html term='[Grizzly]<sub>cf</sub>' model="M" %} <span class="symbol">&#x27d7;</span> {% include sem.html term='bears' type='&alpha;' model="M" %})

{% include contrast/index.html rows="9" %}

<div style="clear:both;"></div>

## Contrastive plural predication

{% include gbad/index.html rows="7" %}


