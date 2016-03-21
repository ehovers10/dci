<!-- Alternative set -->
{% capture alt %}
For A a bare plural, 

{% capture altlhs %}
&alpha;(A)
{% endcapture %}
{% capture altrhs %}
{% capture altcflhs %}
{% include sem.html term='A' %}<sub>f</sub>
{% endcapture %}
{% capture althplhs %}
{ {% include sem.html term='A' %}, {% include sem.html term='&not;A' %} }
{% endcapture %}
{% include eqn.html lhs=altcflhs rhs="[A]<sub>cf</sub>" mult=0 conn="if"  %}

{% include eqn.html lhs=althplhs rhs="" mult=0 conn="otherwise"  %}
{% endcapture %}
{% include eqn.html lhs=altlhs rhs=altrhs mult=1 conn="=" %}

{% capture joinlhs %}
[&forall;<sub>**R**</sub>(A)(B)]
{% endcapture %}
{% capture joinrhs %}
&alpha;(A) &#x22CA; **R**
{% endcapture %}
{% include eqn.html lhs=joinlhs rhs=joinrhs mult=0 conn="&rArr;" %}

{% endcapture %}
{% include ex.html type="def" term="Alternate set" sent="Example" sub="Sub-example" defn=alt %}
