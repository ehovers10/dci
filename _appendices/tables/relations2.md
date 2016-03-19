<!-- Full-inner-Join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>bears</em>' model="M" %} &#x2a1d; {% include sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include keylist.html key="" attr1="" attr2="" attr3="" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Full-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>bears</em>' model="M" %} &#x27d7; {% include sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b|d|e" attr2="+|+|&omega;|+" attr3="+|+|+|&omega;"%}
{% include keylist.html key="s<sub>2</sub>" attr1="a|b|c|d" attr2="+|+|+|+" attr3="+|+|&omega;|&omega;"%}
{% include keylist.html key="s<sub>3</sub>" attr1="a|b|d" attr2="+|&omega;|&omega;" attr3="&omega;|+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Left-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>bears</em>' model="M" %} &#x27d5; {% include sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|bear|danger" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a|b" attr2="+|+|+" attr3="+|+|&omega;"%}
{% include keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+|+|+" attr3="+|+|&omega;|&omega;"%}
{% include keylist.html key="s<sub>3</sub>" attr1="" attr2="+" attr3="&omega;" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Full-inner-Join(Grizzly,Bears) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>grizzly</em>' model="M" %} &#x2a1d; {% include sem.html term='<em>bears</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|grizzly|bear" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a" attr2="+" attr3="+"%}
{% include keylist.html key="s<sub>2</sub>" attr1="a|c" attr2="+|+" attr3="+|+" %}
{% include keylist.html key="s<sub>3</sub>" attr1="a" attr2="+" attr3="+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Left-outer-join(Grizzly,Bears) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include sem.html term='<em>grizzly</em>' model="M" %} &#x27d5; {% include sem.html term='<em>bears</em>' model="M" %}</td>
</tr>

{% include relnheader.html attrs="sit|ent|grizzly|bear" %}

{% include keylist.html key="s<sub>1</sub>" attr1="a" attr2="+" attr3="+" %}
{% include keylist.html key="s<sub>2</sub>" attr1="a|c" attr2="+|+" attr3="+|+ "%}
{% include keylist.html key="s<sub>3</sub>" attr1="a|e" attr2="+|+" attr3="+|&omega;" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>
