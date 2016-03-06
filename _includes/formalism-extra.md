**Contributions:**

<!-- Informative -->
{% capture informlhs %}
**!**[ A<sub>&#x27e8; *s*, *t* &#x27e9;</sub> ]
{% endcapture %}
{% capture informrhs %}
&lambda;&sigma;( *i*<sub>&sigma;</sub> &#x22C2; {% include sem.html term='A' type='&#x27e8; *s*, *t* &#x27e9;' %} = *i*<sub>&sigma;</sub> )
{% endcapture %}
{% include eqn.html lhs=informlhs rhs=informrhs conn="&rArr;"%}

<!-- Interrogative -->
{% capture interroglhs %}
**?**[ Q<sub>*reln*</sub> ]
{% endcapture %}
{% capture interrogrhs %}
&lambda;&sigma;( {% include sem.html term='Q' type='*reln*' %}  &#x22CA; **R** &ne; &empty; )
{% endcapture %}
{% include eqn.html lhs=interroglhs rhs=interrogrhs conn="&rArr;" %}
