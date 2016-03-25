<!-- Strict definitions -->
{% capture strict %}
{% capture stricties %}

**Translations**

{% include eqn.html lhs=counterfact rhs="A &#x297d; B" mult=0 conn="&rArr;" %}
{% include eqn.html lhs=bareplural rhs="&forall;(A)(B)" mult=0 conn="&rArr;" %}

**Semantic rules**

For *A*,*B*: *st*,
{% capture scrhs %}
{% include eqn.html lhs="1" rhs=subset mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=strictcond rhs=scrhs mult=1 conn="=" %}

For *A*,*B*: *et*,
{% capture sbprhs %}
{% include eqn.html lhs="1" rhs=subset mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=univgen rhs=sbprhs mult=1 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="strict analyses" sent="Example" sub="Sub-example" defn=stricties %}
{% endcapture %}

<!-- Variably strict conditionals -->
{% capture variablystrictcond %}
{% capture varstrict %}

**Translation**

{% include eqn.html lhs=counterfact rhs=abvsc mult=0 conn="&rArr;" %}

**Semantic rule**

For *A*,*B*: *st* and &delta;(*i*): *st* &rarr; *st* a selection function determined by context *i*,
{% include eqn.html lhs=aprefsem rhs='&delta;(i)(A)' mult=0 conn="=" %}
{% capture vscrhs %}
{% include eqn.html lhs="1" rhs=aprefsubb mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=varstrictcond rhs=vscrhs mult=1 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="Variably strict analysis" sent="Example" sub="Sub-example" defn=varstrict %}
{% endcapture %}

<!-- Shifty strict conditionals -->
{% capture shiftystrictcond %}
{% capture shiftstrict %}

**Translations**
{% capture ssctest %}
{% assign symname = '&#x297d;<sub>s</sub>' %}
{% include formula.html style="in" symbol=symname op1="A" op2="B" sem="n" index="" assign="" model="" %}
{% endcapture %}
{% include eqn.html lhs=counterfact rhs=ssctest mult=0 conn="&rArr;" %}
{% capture bareplhs %}
*A*s are B
{% endcapture %}

**Semantic rules**

For *i<sub>s</sub>*: *st*, *A*: *st*, and &delta;(*i*): *st* &rarr; *st* a selection function determined by context *i*,
{% capture select %}
{% include sem.html term='A' index='i' %}
{% endcapture %}
{% include eqn.html lhs="&delta;(i)(A)" rhs=select conn="&sube;" mult=0 %}
{% capture plusrhs %}
i<sub>s</sub> &cap; &delta;(i)(A)
{% endcapture %}
{% capture sscsem %}
{% include sem.html term='A' index='i' %} &sube; {% include sem.html term='B' index='i[i<sub>s</sub>&rarr;i<sub>s</sub><sup>+</sup>(A)]' %}
{% endcapture %}
{% include eqn.html lhs="i<sub>s</sub><sup>+</sup>(A)" rhs=plusrhs mult=0 conn="=" %}

For *A*,*B*: *st*,
{% capture sscrhs %}
{% include eqn.html lhs="1" rhs=sscsem mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=shiftstrictcond rhs=sscrhs mult=1 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="shifty strict analyses" sent="Example" sub="Sub-example" defn=shiftstrict %}
{% endcapture %}

<!-- Thinning -->
{% capture thinning %}
{% capture thin %}
{% include eqn.html lhs=strictcond rhs=subset mult=0 conn="&rArr;" %}
{% include eqn.html lhs='&nbsp;' rhs=acsubb mult=0 conn="&rArr;" %}
{% include eqn.html lhs='&nbsp;' rhs=acstrictb mult=0 conn="&rArr;" %}
{% endcapture %}
{% include ex.html type="def" term="Thinning" sent="Example" sub="Sub-example" defn=thin %}
{% endcapture %}

<!-- Focus semantic values -->
{% capture fsem %}
For a domain of discourse **D** and type *t*,
  
{% capture fesmlhs %}
{% include sem.html term='&phi;<sub>*t*</sub>' index='f' %}
{% endcapture %}
{% capture fesmrhs %}
{ d &isin; **D**<sub>*t*</sub> }
{% endcapture %}
{% include eqn.html lhs=fesmlhs rhs=fesmrhs mult=0 conn="=" %}
{% endcapture %}

<!-- QA-congruence -->
{% capture qa %}
For a question/answer pair &#x27e8; &psi;, &alpha; &#x27e9;, 

{% capture qalhs %}
{% include sem.html term='&psi;' index="o"%}
{% endcapture %}
{% capture qarhs %}
{% include sem.html term='&alpha;' index="f" %}
{% endcapture %}
{% include eqn.html lhs=qalhs rhs=qarhs mult=0 conn="&sube;" %}

{% endcapture %}

<!-- Generally universal quantifier -->
{% capture generics %}
{% capture gen %}

**Translation**

{% include eqn.html lhs=bareplural rhs="GEN(A)(B)" mult=0 conn="&rArr;" %}

**Semantic rules**

For *A*,*B*: *et* and &delta;(*i*): *et* &rarr; *et* a selection function determined by context *i*,
{% include eqn.html lhs=aprefsem rhs='&delta;(i)(A)' mult=0 conn="=" %}

{% capture gbprhs %}
{% include eqn.html lhs="1" rhs=aprefsubb mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% capture genbareplural %}
{% include sem.html term='GEN(A)(B)' index='i' %}
{% endcapture %}
{% include eqn.html lhs=genbareplural rhs=gbprhs mult=1 conn="=" %}
{% endcapture %}
{% include ex.html type="def" term="generic analysis" sent="Example" sub="Sub-example" defn=gen %}
{% endcapture %}

<!-- Structurally universal quantifier -->
{% capture structure %}
{% capture struc %}
**Translations**

{% include eqn.html lhs=bareplural rhs="&forall;<sub>**R**</sub>(A)(B)" mult=0 conn="=" %}

**Semantics** 

For **R**,

{% include eqn.html lhs='&#x213f;(**R**)' rhs='&delta;(i)(A)' mult=0 conn="=" %}

For *As*: *et* and *B*: (*et*)*t*,

{% capture plural1lhs %}
{% include sem.html term='&forall;<sub>**R**</sub>(A)(B)' index='i' %}
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

{% endcapture %}
{% include ex.html type="def" term="structurally universal quantifier" sent="Example" sub="Sub-example" defn=struc %}
{% endcapture %}

<!-- von Fintel Homogeneity -->
{% capture homovf %}
{% capture homo %}
[&forall; x &isin; f(w)(p): q(x)] &or; [&forall; x &isin; f(w)(p): &not;q(x)]
{% endcapture %}
{% include ex.html type="def" term="homogeneity<sub>von Fintel</sub>" sent="Example" sub="Sub-example" defn=homo %}
{% endcapture %}

<!-- Homogeneity -->
{% capture homogen %}
{% include ex.html type="def" term="Homogeneity" sent="Example" sub="Sub-example" defn="Utterances involving bare plural subjects present the set determined by the subject as homogenous with respect to the predicate. The predicate applies either to all members of the subject class or to none of them." %}
{% endcapture %}
