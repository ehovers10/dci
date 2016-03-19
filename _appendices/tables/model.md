{% comment %}
**D**<sub>s</sub> = { s<sub>1</sub>, s<sub>2</sub>, s<sub>3</sub>, ... }

**D**<sub>e</sub> = { a, b, c, d, e, ... }

*V*(*bears*) = s<sub>1</sub> &rArr; { a, b, e }
               s<sub>2</sub> &rArr; { a, b, c, d }
               s<sub>3</sub> &rArr; { a }

*V*(*dangerous*) = s<sub>1</sub> &rArr; { a, b, d }
                   s<sub>2</sub> &rArr; { a }
                   s<sub>3</sub> &rArr; { b, d }

*V*(*grizzly*) = s<sub>1</sub> &rArr; { a }
                 s<sub>2</sub> &rArr; { a, c }
                 s<sub>3</sub> &rArr; { a }

*V*(*koala*) = s<sub>1</sub> &rArr; { b }
               s<sub>2</sub> &rArr; { b }
               s<sub>3</sub> &rArr; { b }

*V*(*polar*) = s<sub>1</sub> &rArr; {   }
               s<sub>2</sub> &rArr; { d }
               s<sub>3</sub> &rArr; { e }

{% endcomment %}

{% capture dslhs %}
**D**<sub>s</sub>
{% endcapture %}
{% capture dsrhs %}
{ s<sub>1</sub>, s<sub>2</sub>, s<sub>3</sub>, ... }
{% endcapture %}
{% include eqn.html lhs=dslhs rhs=dsrhs mult=0 conn="=" %}
{% capture lhs %}
**D**<sub>e</sub>
{% endcapture %}
{% capture rhs %}
{ a, b, c, d, e, ... }
{% endcapture %}
{% include eqn.html lhs=lhs rhs=rhs mult=0 conn="=" %}
{% capture vbearslhs %}
*V*(*bears*)
{% endcapture %}
{% capture vbearsrhs %}
s<sub>1</sub> &rArr; { a, b, e }

s<sub>2</sub> &rArr; { a, b, c, d }

s<sub>3</sub> &rArr; { a }
{% endcapture %}
{% include eqn.html lhs=vbearslhs rhs=vbearsrhs mult=3 conn="=" %}

{% capture vdangerouslhs %}
*V*(*dangerous*)
{% endcapture %}
{% capture vdangerousrhs %}
s<sub>1</sub> &rArr; { a, b, d }

s<sub>2</sub> &rArr; { a }

s<sub>3</sub> &rArr; { b, d }
{% endcapture %}
{% include eqn.html lhs=vdangerouslhs rhs=vdangerousrhs mult=3 conn="=" %}

{% capture vgrizzlylhs %}
*V*(*grizzly*)
{% endcapture %}
{% capture  vgrizzlyrhs %}
s<sub>1</sub> &rArr; { a }

s<sub>2</sub> &rArr; { a, c }

s<sub>3</sub> &rArr; { a }
{% endcapture %}
{% include eqn.html lhs= vgrizzlylhs rhs= vgrizzlyrhs mult=3 conn="=" %}

{% capture vkoalalhs %}
*V*(*koala*)
{% endcapture %}
{% capture vkoalarhs %}
s<sub>1</sub> &rArr; { b }

s<sub>2</sub> &rArr; { b }

s<sub>3</sub> &rArr; { b }
{% endcapture %}
{% include eqn.html lhs=vkoalalhs rhs=vkoalarhs mult=3 conn="=" %}

{% capture vpolarlhs %}
*V*(*polar*)
{% endcapture %}
{% capture vpolarrhs %}
s<sub>1</sub> &rArr; {   }

s<sub>2</sub> &rArr; { d }

s<sub>3</sub> &rArr; { e }
{% endcapture %}
{% include eqn.html lhs=vpolarlhs rhs=vpolarrhs mult=3 conn="=" %}
