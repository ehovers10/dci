<!-- DRS -->
{% capture drslhs %}
&phi; = [ &phi;<sup>d</sup> \| &phi;<sup>c</sup> ]
{% endcapture %}
{% capture drsrhs %}
is a *discourse representation structure*, where
{% endcapture %}
{% include eqn.html lhs=drslhs rhs=drsrhs mult=0 conn="&nbsp;" %}
<div class="subdef" markdown="1">

<!-- drefs -->
{% capture dreflhs %}
&phi;<sup>d</sup>
{% endcapture %}
{% capture drefrhs %}
is a sequence of drefs introduced in the discourse, and 
{% endcapture %}
{% include eqn.html lhs=dreflhs rhs=drefrhs mult=0 conn="&nbsp;" %}

<!-- conditions -->
{% capture condlhs %}
&phi;<sup>c</sup>
{% endcapture %}
{% capture condrhs %}
is a sequence of conditions, imposing constraints on the model against which sentences are evaluated.
{% endcapture %}
{% include eqn.html lhs=condlhs rhs=condrhs mult=0 conn="&nbsp;" %}

</div>

For a sentence S uttered in a discourse D represented by DRS &phi;,

<!-- Sentence contrib -->
{% capture sentlhs %}
S<sup>d</sup>

S<sup>c</sup>
{% endcapture %}
{% capture sentrhs %}
is the sequence of drefs contributed by S,

is the sequence of conditions contributed by S.
{% endcapture %}
{% include eqn.html lhs=sentlhs rhs=sentrhs mult=0 conn="&nbsp;" %}
<!-- Update -->
{% capture updlhs %}
D &rArr; S 
{% endcapture %}
{% capture updrhs %}
[ &phi;<sup>d</sup> &oplus; S<sup>d</sup> \| &phi;<sup>c</sup> &oplus; S<sup>c</sup> ]
{% endcapture %}
{% include eqn.html lhs=updlhs rhs=updrhs mult=0 conn="=" %}
