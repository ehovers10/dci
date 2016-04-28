<!-- Full-inner-Join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>bears</em>' model="M" %} &#x2a1d; {% include examples/sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include relations/keylist.html key="" attr1="" attr2="" attr3="" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Full-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>bears</em>' model="M" %} &#x27d7; {% include examples/sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|d|e" attr2="+|+|&omega;|+" attr3="+|+|+|&omega;"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b|c|d" attr2="+|+|+|+" attr3="+|+|&omega;|&omega;"%}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="a|b|d" attr2="+|&omega;|&omega;" attr3="&omega;|+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Left-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>bears</em>' model="M" %} &#x27d5; {% include examples/sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b" attr2="+|+|+" attr3="+|+|&omega;"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+|+|+" attr3="+|+|&omega;|&omega;"%}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="" attr2="+" attr3="&omega;" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Full-inner-Join(Grizzly,Bears) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>grizzly</em>' model="M" %} &#x2a1d; {% include examples/sem.html term='<em>bears</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|grizzly|bear" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a" attr2="+" attr3="+"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|c" attr2="+|+" attr3="+|+" %}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="a" attr2="+" attr3="+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Left-outer-join(Grizzly,Bears) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>grizzly</em>' model="M" %} &#x27d5; {% include examples/sem.html term='<em>bears</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|grizzly|bear" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a" attr2="+" attr3="+" %}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|c" attr2="+|+" attr3="+|+ "%}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="a|e" attr2="+|+" attr3="+|&omega;" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Bears are dangerous divided by Projection(Dangerous) -->

{% include examples/sem.html term='<em>bears are dangerous</em>' model="M" %}(<em>hp</em>) = ({% include examples/sem.html term='<em>bears</em>' model="M" %} &#x27d6; {% include examples/sem.html term='<em>dangerous</em>' model="M" %})&#x21c2;[GROUP(<strong>sit</strong>)(COUNT(<strong>bear</strong>,+) = COUNT(<strong>ent</strong>,*) &or; COUNT(<strong>bear</strong>,+) = 0)]

<!-- Right-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>bears</em>' model="M" %} &#x27d6; {% include examples/sem.html term='<em>dangerous</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="+|+|&omega;" attr3="+|+|+"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Group by sit -->
<table class="relation">
<tr>
  <td class="label" colspan="4">GROUP(**sit**)</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="+|+|&omega;" attr3="+|+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Count bear(+) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">COUNT(<strong>bear</strong>,+)</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="<span class='green'>+</span>|<span class='green'>+</span>|&omega;" attr3="+|+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="<span class='green'>+</span>|<span class='green'>+</span>" attr3="+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Count ent(*) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">COUNT(<strong>ent</strong>,*)</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>|<span class='red'>d</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>|&omega;" attr3="+|+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>2</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>" attr3="+|+"%}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>3</sub>" attr1="<span class='red'>b</span>|<span class='red'>d</span>" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- Compare -->
<table class="relation">
<tr>
  <td class="label" colspan="4">COUNT(<strong>ent</strong>,*)</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>|<span class='red'>d</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>|&omega;" attr3="+|+|+" comp="X" %}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>2</sub>" attr1="<span class='red'>a</span>|<span class='red'>b</span>" attr2="<span class='green'>+</span>|<span class='green'>+</span>" attr3="+|+" comp="&#x2713;" %}
<tr><td class="label" colspan="4" style="border-bottom:1px solid #000;"></td></tr>
{% include relations/keylist.html key="s<sub>3</sub>" attr1="<span class='red'>b</span>|<span class='red'>d</span>" attr2="&omega;|&omega;" attr3="+|+" comp="&#x2713;" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

{% include examples/sem.html term='<em>[Grizzly]<sub>cf</sub> bears are dangerous</em>' model="M" %}(<em>hp</em>) = ({% include examples/sem.html term='<em>[Grizzly]<sub>cf</sub> bears</em>' model="M" %} &#x27d6; {% include examples/sem.html term='<em>dangerous</em>' model="M" %})&#x21c2;[GROUP(<strong>sit</strong>)GROUP(<strong>bear</strong>)(COUNT(<em>bear</em>) = COUNT(<strong>ent</strong>,*)]

<!-- Right-outer-join(Bears,Dangerous) -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>[Grizzly]<sub>cf</sub> bears are dangerous</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|d" attr2="grizzly|koala|&omega;" attr3="+|+|+"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a" attr2="grizzly" attr3="+"%}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="koala|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="float:left;line-height:200px;text-align:bottom;">&rArr;</div>

<!-- Return worlds uniformly of one bear type -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>[Grizzly]<sub>cf</sub> bears are dangerous</em>' model="M" %}(<em>hp</em>)</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>2</sub>" attr1="a" attr2="grizzly" attr3="+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="clear:both;"></div>

<div style="float:left;line-height:200px;text-align:bottom;">&rArr;</div>

<!-- Return worlds where all bears or no bears -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>Bears are dangerous</em>' model="M" %}(<em>hp</em>)</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|danger" %}

{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b" attr2="+|+" attr3="+|+"%}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="b|d" attr2="&omega;|&omega;" attr3="+|+" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- [Grizzly]cf -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>[Grizzly]<sub>cf</sub></em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|kind" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b" attr2="grizzly|koala" %}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b|c|d" attr2="grizzly|koala|grizzly|polar" %}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="a|b|d|e" attr2="grizzly|koala|grizzly|polar" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<!-- [Grizzly]cf bears -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='[Grizzly]<sub>cf</sub>' model="M" %} <span class="symbol">&#x27d7;</span> {% include examples/sem.html term='bears' type='&alpha;' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear|kind" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|e" attr2="+|+|+" attr3="grizzly|koala|&omega;"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b|c|d" attr2="+|+|+|+" attr3="grizzly|koala|grizzly|polar" %}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="a|b|e" attr2="+|&omega;|&omega;" attr3="grizzly|koala|polar" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>

<div style="float:left;line-height:200px;text-align:bottom;">&rArr;</div>

<!-- [Grizzly]cf bears -->
<table class="relation">
<tr>
  <td class="label" colspan="4">{% include examples/sem.html term='<em>[Grizzly]<sub>cf</sub> bears</em>' model="M" %}</td>
</tr>

{% include relations/relnheader.html attrs="sit|ent|bear" %}

{% include relations/keylist.html key="s<sub>1</sub>" attr1="a|b|e" attr2="grizzly|koala|&omega;"%}
{% include relations/keylist.html key="s<sub>2</sub>" attr1="a|b|c|d" attr2="grizzly|koala|grizzly|polar" %}
{% include relations/keylist.html key="s<sub>3</sub>" attr1="a|b|e" attr2="grizzly|koala|polar" %}

<tr>
  <td class="label" colspan="4"><strong>&#10649;</strong></td>
</tr>
</table>
