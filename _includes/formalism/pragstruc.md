<!-- Discourse dynamics -->
{% capture pragstrucdef %}

<!-- DRS -->
{% capture drslhs %}
[ &#x27e8;*dref*&#x27e9; \| &#x27e8;*cond*&#x27e9; ]
{% endcapture %}
{% capture drsrhs %}
is a *discourse representation structure*, where
{% endcapture %}
{% include examples/eqn.html lhs=drslhs rhs=drsrhs mult=0 conn="&nbsp;" %}
<div class="subdef" markdown="1">

<!-- drefs -->
{% capture dreflhs %}
&#x27e8;*dref*&#x27e9;
{% endcapture %}
{% capture drefrhs %}
is a sequence of **dref** terms introduced to the information state, and 
{% endcapture %}
{% include examples/eqn.html lhs=dreflhs rhs=drefrhs mult=0 conn="&nbsp;" %}

<!-- conditions -->
{% capture condlhs %}
&#x27e8;*cond*&#x27e9;
{% endcapture %}
{% capture condrhs %}
is a sequence of set-theoretic operations on the *information state*
{% endcapture %}
{% include examples/eqn.html lhs=condlhs rhs=condrhs mult=0 conn="&nbsp;" %}

</div>

<!-- Information state -->
{% capture infolhs %}
+ &#x27e8; 
+ *i*, 
+ **R**, 
+ &#x27e8;*dref*&#x27e9;,
+ &#x27e8;*sand*&#x27e9;,
+ &#x27e8;*rec*&#x27e9; 
+ &#x27e9;
{: .seqlist}
{% endcapture %}
{% capture inforhs %}
is an *information state* for a discourse, where
{% endcapture %}
{% include examples/eqn.html lhs=infolhs rhs=inforhs mult=0 conn="&nbsp;" %}

<div class="subdef" markdown="1">

<!-- Common ground -->
{% capture cglhs %}
*i* : *s*
{% endcapture %}
{% capture cgrhs %}
is the {% include appendices/concept.html word="common ground" base="" e="" %},
{% endcapture %}
{% include examples/eqn.html lhs=cglhs rhs=cgrhs mult=0 conn="&nbsp;" %}

<!-- Relation set -->
{% capture relnlhs %}
**R** : &pi;*t*
{% endcapture %}
{% capture relnrhs %}
is a set of partitions of *i*,
{% endcapture %}
{% include examples/eqn.html lhs=relnlhs rhs=relnrhs mult=0 conn="&nbsp;" %}

<!-- Drefs -->
{% capture drefinfolhs %}
&#x27e8;*dref*&#x27e9;
{% endcapture %}
{% capture drefinforhs %}
is a sequence of *discourse referents*,
{% endcapture %}
{% include examples/eqn.html lhs=drefinfolhs rhs=drefinforhs mult=0 conn="&nbsp;" %}

<!-- Sandbox -->
{% capture sandlhs %}
&#x27e8;*sand* = &#x27e8; P : &xi;, *x* : &chi; &#x27e9; &#x27e9;
{% endcapture %}
{% capture sandrhs %}
is a sequence of {% include appendices/concept.html word="propositional radical" base="" e="" %} and {% include appendices/concept.html word="completion" base="" e="" %} pairs that represents the collaborative space of the discourse.
{% endcapture %}
{% include examples/eqn.html lhs=sandlhs rhs=sandrhs mult=0 conn="&nbsp;" %}

<!-- Record -->
{% capture reclhs %}
&#x27e8;*rec* : &rho; &#x27e9;
{% endcapture %}
{% capture recrhs %}
is sequence of *discourse referents* that provides a record of changes made to the information state throughout the discourse
{% endcapture %}
{% include examples/eqn.html lhs=reclhs rhs=recrhs mult=0 conn="&nbsp;" %}

</div>

{% endcapture %}
{% include examples/ex.html type="def" term="Pragmatic structure" defn=pragstrucdef link="pragstruc" %}
