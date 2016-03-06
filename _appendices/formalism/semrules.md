The language of *collaborative update semantics* extends a first-order, model theoretic semantics with identity. The *terms* of the language are all those established in the semantic rules defined below.[^modelsuppress]

[^modelsuppress]: For purposes of readability, reference to arguments of the semantic value function suppressed unless the function is non-constant over that argument.
  
{% capture semantics %}

**Primitives:** For all &alpha; &isin; **T**, c{{ type }} &isin; *Cons*, and u{{ type }} &isin; *Vars*,

<!-- Cons -->
{% capture conslhs %}
{% include sem.html term='c' type='&alpha;' model="**M**"%}
{% endcapture %}
{% capture consrhs %}
**V**(c{{ type }})
{% endcapture %}
{% include eqn.html lhs=conslhs rhs=consrhs mult=0 conn="=" %}

<!-- Vars -->
{% capture varlhs %}
{% include sem.html term='u' type='&alpha;' assign="*g*"%}
{% endcapture %}
{% capture varrhs %}
*g*(u{{ type }})
{% endcapture %}
{% include eqn.html lhs=varlhs rhs=varrhs mult=0 conn="=" %}

<!-- Top -->
{% capture toplhs %}
{% include sem.html term='&#x22A4;' type='&alpha;' %}
{% endcapture %}
{% capture toprhs %}
**D**<sub>&alpha;</sub>
{% endcapture %}
{% include eqn.html lhs=toplhs rhs=toprhs mult=0 conn="=" %}

**Application:** For all &alpha; &isin; **T**, u{{ type }} &isin; *Vars*, d{{ type }} &isin; **D**, and terms A:

{% capture applilhs %}
{% include sem.html term='&lambda;u<sub>&alpha;</sub>(A)' assign="*g*" %}(d{{ type }})
{% endcapture %}
{% capture applirhs %}
{% include sem.html term='A' assign='*g*[u<sub>&alpha;</sub>&rarr;d]'%} 
{% endcapture %}
{% include eqn.html lhs=applilhs rhs=applirhs mult=0 conn="=" %}

**Identity:** For all &alpha; &isin; **T**, and terms *A* and *B*,

{% capture identlhs %}
{% include sem.html term='*A*<sub>&alpha;</sub> = *B*<sub>&alpha;</sub>' %}
{% endcapture %}
{% capture identrhs %}
{% capture ident1rhs %}
{% include sem.html term='*A*' type='&alpha;' %} = {% include sem.html term='*B*' type='&alpha;' %}
{% endcapture %}
{% include eqn.html lhs="1" rhs=ident1rhs mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=identlhs rhs=identrhs mult=1 conn="=" %}

**Bare plurals:** For all *As*: &#x27e8; *e*, *t* &#x27e9;, *B*: &#x27e8; &#x27e8; *e*, *t* &#x27e9;, *t* &#x27e9;

{% capture plural1lhs %}
&#x27e6; [&#x2219;]*AB* &#x27e7;<sup>**R**</sup>
{% endcapture %}
{% capture plural1rhs %}

{% capture plural11rhs %}
{ {% include sem.html term='A' %} } &isin; &#x213f;(**R**)

{% include sem.html term='A' %} &sube; {% include sem.html term='B' %}
{% endcapture %}
{% include eqn.html lhs="1" rhs=plural11rhs mult=1 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
<div style="padding:1em;"></div>
{% include eqn.html lhs=plural1lhs rhs=plural1rhs mult=2 conn="=" %}

{% capture plural2lhs %}
&#x27e6; [C]<sub>cf</sub> *AB* &#x27e7;
{% endcapture %}
{% capture plural2rhs %}

{% capture plural21rhs %}
{ {% include sem.html term='A' %} } &isin; [ C ]

{% include sem.html term='A' %} &sube; {% include sem.html term='B' %}
{% endcapture %}
{% include eqn.html lhs="1" rhs=plural21rhs mult=1 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
<div style="padding:1em;"></div>
{% include eqn.html lhs=plural2lhs rhs=plural2rhs mult=2 conn="=" %}

**Booleans:** For all propositions &phi; and &psi;,
<!-- not -->
{% capture notlhs %}
{% include sem.html term='&not;&phi;' %}
{% endcapture %}
{% capture notrhs %}
{% include sem.html term='&#x22A4;' type="*st*" %} / {% include sem.html term='&phi;' %}
{% endcapture %}
{% include eqn.html lhs=notlhs rhs=notrhs mult=0 conn="=" %}
 
<!-- and -->
{% capture andlhs %}
{% include sem.html term='&phi;&and;&psi;' %}
{% endcapture %}
{% capture andrhs %}
{% include sem.html term='&phi;' %} &#x22C2; {% include sem.html term='&psi;' %}
{% endcapture %}
{% include eqn.html lhs=andlhs rhs=andrhs mult=0 conn="=" %}
<!-- or -->
{% capture orlhs %}
{% include sem.html term='&phi;&or;&psi;' %}
{% endcapture %}
{% capture orrhs %}
{% include sem.html term='&phi;' %} &#x22C3; {% include sem.html term='&psi;' %}
{% endcapture %}
{% include eqn.html lhs=orlhs rhs=orrhs mult=0 conn="=" %}
    
**Quantifiers:** For all variables u<sub>e</sub>, and propositions &phi;,

<!-- For all -->
{% capture alllhs %}
{% include sem.html term='&forall;u<sub>e</sub>&phi;' assign="*g*" %}
{% endcapture %}
{% capture allrhs %}
{% capture all1rhs %}
{% include sem.html term='&phi;' assign='*g*[x&rarr;u<sub>e</sub>]' %} = 1 <br />for all u<sub>e</sub>
{% endcapture %}
{% include eqn.html lhs="1" rhs=all1rhs mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=alllhs rhs=allrhs mult=3 conn="=" %}

<!-- Some -->
{% capture somelhs %}
{% include sem.html term='&exist;u<sub>e</sub>&phi;' assign='*g*' %}
{% endcapture %}
{% capture somerhs %}
{% capture some1rhs %}
{% include sem.html term='&phi;' assign='*g*[x&rarr;u<sub>e</sub>]' %} = 1 <br />for some u<sub>e</sub>
{% endcapture %}
{% include eqn.html lhs="1" rhs=some1rhs mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=somelhs rhs=somerhs mult=3 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="Semantics" defn=semantics link="semantics" %}

<!-- Notes -->
The semantics provided above is largely standard. We highlight just a few specifics:
  
+ Propositional radicals and saturations, for which **CU** requires a distinctive type.
+ We will need different coordination rules to get conjunction etc. of propositional radicals, commits, and contributions. 
+ Our language only has quantifiers for entity type. Bare plurals are treated as plural predications.
