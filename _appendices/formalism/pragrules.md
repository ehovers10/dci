<!-- Discourse dynamics -->
{% capture basedrt %}

**Informative update**
{% capture informupdatelhs %}
[ &#x23aa; C<sub>&#x27e8; s,t &#x27e9;</sub> ]
{% endcapture %}
{% capture informupdaterhs %}
*i* &#x22C2; {% include sem.html term='C' type='*st*' index="*i*" %}

&lambda;&sigma;( *i*<sub>&sigma;</sub> &#x22C2; C<sub>s</sub> = *i*<sub>&sigma;</sub> )
{% endcapture %}
{% include eqn.html lhs=informupdatelhs rhs=informupdaterhs mult=0 conn="&rArr;" %}

**Structuring update**
{% capture strucupdatelhs %}
[ &#x23aa; C<sub>&#x27e8; &#x27e8; s,t &#x27e9;,t &#x27e9;</sub> ]
{% endcapture %}
{% capture strucupdaterhs %}
**R** &#x22CA; {% include sem.html term='C' type='(*st*)*t*' index='**R**' %}

&lambda;&sigma;( **R**<sub>&sigma;</sub> &#x22CA; C<sub>s,t</sub> = **R**<sub>&sigma;</sub> )
{% endcapture %}
{% include eqn.html lhs=strucupdatelhs rhs=strucupdaterhs mult=0 conn="&rArr;" %}

**Discourse referent update**
{% capture drefupdatelhs %}
[ u<sub>1</sub>..u<sub>n</sub> &#x23aa; ]
{% endcapture %}
{% capture drefupdaterhs %}
u<sub>0</sub>..u<sub>n</sub> **&#x29c0;** &#x27e8; *dref* &#x27e9;

&lambda;&sigma;[&forall;(k &isin; [0..n])( &delta;<sub>&sigma;</sub>[k] = *g*(u<sub>k</sub> ) ]
{% endcapture %}
{% include eqn.html lhs=drefupdatelhs rhs=drefupdaterhs mult=0 conn="&rArr;" %}

{% endcapture %}
{% include ex.html type="def" term="Basic DRT" defn=basedrt link="basedrt" %}

{% capture collabdynamics %}

**Checkout:**

{% capture checkoutlhs %}
[ &gamma; ]
{% endcapture %}
{% capture checkoutrhs %}
&lambda;&sigma;( &sigma; **&#x29c0;** &#x27e8; *dref* &#x27e9;<sub>&sigma;</sub> )
{% endcapture %}
{% include eqn.html lhs=checkoutlhs rhs=checkoutrhs mult=0 conn="=" %}

**Commit:**

{% capture commitlhs %}
**Put**(*dref*{{ type }})
{% endcapture %}
{% capture commitrhs %}
[ *dref*{{ type }} \| ]

&lambda;*dref*( **&#x29c0;**&#x27e8; *dref* &#x27e9; = *dref*{{ type }})

&lambda;&sigma;( *dref*{{ type }} **&#x29c0;** &#x27e8; *dref* &#x27e9;<sub>&sigma;</sub> )
{% endcapture %}
{% include eqn.html lhs=commitlhs rhs=commitrhs mult=0 conn="=" %}

**Correct:**

{% capture correctlhs %}
[ **Corr**(*dref*{{ type }}) ]
{% endcapture %}
{% capture correctrhs %}

{% endcapture %}
{% include eqn.html lhs=correctlhs rhs=correctrhs mult=0 conn="=" %}

**Merge:**

{% capture mergelhs %}
[ &mu; ]
{% endcapture %}
{% capture mergerhs %}
&lambda;&sigma;[ (1st dref is type &sigma;) &amp; (&#x27e8; i<sub>sb</sub> &#x22C2; i<sub>is</sub>, R<sub>sb</sub> &#x22CA; R<sub>is</sub>, &rho; **&#x29c0;** [dref]<sub>is</sub>&#x27e9;) ]
{% endcapture %}
{% include eqn.html lhs=mergelhs rhs=mergerhs mult=0 conn="&rArr;" %}

{% endcapture %}
{% include ex.html type="def" term="Collaborative dynamics" defn=collabdynamics link="collabdynamics" %}
    

<!-- Notes -->

+ On checksum introduction, Cf. Bittner's *centering rule*: Prepends an object of type &alpha; to one of either the topic list or the background lists {% include ref.html id="bittner2011" o="n" p="&#167;2.2" %}
+ For merging the relation set, the result of the left outer join is the set of all combinations of tuples in R and S that are equal on their common attribute names, in addition to tuples in R that have no matching tuples in S.
