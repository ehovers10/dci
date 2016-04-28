<!-- Alternative set -->
{% capture alt %}
For A a bare plural, 

{% capture altlhs %}
&alpha;(A)
{% endcapture %}
{% capture altrhs %}
{% capture altcflhs %}
{% include examples/sem.html term='A' %}<sub>f</sub>
{% endcapture %}
{% capture althplhs %}
{ {% include examples/sem.html term='A' %}, {% include examples/sem.html term='&not;A' %} }
{% endcapture %}
{% include examples/eqn.html lhs=altcflhs rhs="[A]<sub>cf</sub>" mult=0 conn="if"  %}

{% include examples/eqn.html lhs=althplhs rhs="" mult=0 conn="otherwise"  %}
{% endcapture %}
{% include examples/eqn.html lhs=altlhs rhs=altrhs mult=1 conn="=" %}

{% capture joinlhs %}
[&forall;<sub>**R**</sub>(A)(B)]
{% endcapture %}
{% capture joinrhs %}
&alpha;(A) &#x22CA; **R**
{% endcapture %}
{% include examples/eqn.html lhs=joinlhs rhs=joinrhs mult=0 conn="&rArr;" %}

{% endcapture %}
{% include examples/ex.html type="def" term="Alternate set" sent="Example" sub="Sub-example" defn=alt %}
