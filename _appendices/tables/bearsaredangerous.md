---
title: Bear are dangerous
layout: table
---

<!-- Right-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>bears</em>' model="M" %} &#x27d6; {% include sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="+|+|&omega;" attr3="+|+|+"%}
{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="clear:both;"></div>

<!-- Group by sit -->
<table class="relation">
<tr>
  <td class="label" colspan="4">GROUP(<strong>sit</strong>)</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="+|+|&omega;" attr3="+|+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="clear:both;"></div>

<!-- Count bear(+) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">COUNT(<strong>bear</strong>,+)</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="<span class='green'>+</span>|<span class='green'>+</span>|&omega;" attr3="+|+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="<span class='green'>+</span>|<span class='green'>+</span>" attr3="+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Page break -->
<div class="breaker" style="clear:both;"></div>

<!-- Count ent(*) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">COUNT(<strong>ent</strong>,*)</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>|<span class='red'>d</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>|&omega;" attr3="+|+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>2</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>" attr3="+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>3</sub>" attr1="<span class='red'>b</span>|<span class='red'>d</span>" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Page break -->
<div class="breaker" style="clear:both;"></div>

<!-- Compare -->
<table class="relation">
<tr>
  <td class="label" colspan="4">Compare</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>|<span class='red'>d</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>|&omega;" attr3="+|+|+" comp="X" %}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>2</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>" attr3="+|+" comp="&#x2713;" %}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include keylist.html key="s<sub>3</sub>" attr1="<span class='red'>b</span>|<span class='red'>d</span>" attr2="&omega;|&omega;" attr3="+|+" comp="&#x2713;" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="clear:both;"></div>

<!-- Return worlds where all bears or no bears -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>Bears are dangerous</em>' model="M" %}(<em>hp</em>)</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="clear:both;height:100px;">&nbsp;</div>

