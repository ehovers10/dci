<!-- Strict definitions -->
{% capture strict %}
{% capture stricties %}

**Translations**

{% include eqn.html lhs=counterfact rhs="A &#x297d; B" mult=0 conn="&rArr;" %}
{% include eqn.html lhs=bareplural rhs="&forall;(A)(B)" mult=0 conn="&rArr;" %}

**Semantic rules**

For *A* and *B* of type *st*:
{% capture scrhs %}
{% include eqn.html lhs="1" rhs=subset mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=strictcond rhs=scrhs mult=1 conn="=" %}

For *A* and *B* of type *et*:
{% capture sbprhs %}
{% include eqn.html lhs="1" rhs=subset mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=univgen rhs=sbprhs mult=1 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="strict analyses" sent="Example" sub="Sub-example" defn=stricties %}
{% endcapture %}

<!-- Shifty strict conditionals -->
{% capture shiftystrictcond %}
{% capture shiftstrict %}

**Translations**

{% include eqn.html lhs=counterfact rhs="A &#x297d;<sub>s</sub> B" mult=0 conn="&rArr;" %}
{% capture bareplhs %}
*A*s are B
{% endcapture %}

**Semantic rules**

For *i* of type &sigma; and *A* of type *st*:
{% capture plusrhs %}
{ w &isin; i<sub>s</sub> &cap; A }
{% endcapture %}
{% include eqn.html lhs="i+A" rhs=plusrhs mult=0 conn="=" %}

For *A* and *B* of type *st*:
{% capture sscrhs %}
{% include eqn.html lhs="1" rhs=plusrhs mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=shiftstrictcond rhs=sscrhs mult=1 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="shifty strict analyses" sent="Example" sub="Sub-example" defn=shiftstrict %}
{% endcapture %}

<!-- Variably strict conditionals -->
{% capture variablystrictcond %}
{% capture varstrict %}

**Translation**

{% include eqn.html lhs=counterfact rhs=abvsc mult=0 conn="&rArr;" %}

**Semantic rule**

For *A* and *B* of type *st*, and &delta;(*i*) the characteristic set of the selection function determined by context *i*:
{% include eqn.html lhs=aprefsem rhs=aprefset mult=0 conn="=" %}
{% capture vscrhs %}
{% include eqn.html lhs="1" rhs=aprefsubb mult=0 conn="if" embed="" %}

{% include eqn.html lhs="0" rhs="" mult=0 conn="otherwise" embed="" %}
{% endcapture %}
{% include eqn.html lhs=abvscsem rhs=vscrhs mult=1 conn="=" %}

{% endcapture %}
{% include ex.html type="def" term="Variably strict analysis" sent="Example" sub="Sub-example" defn=varstrict %}
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
