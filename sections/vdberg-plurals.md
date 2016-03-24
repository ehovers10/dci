---
---

van den Berg: Plural logic

Plural predicate: a relation between sets of sets of entities (e.g. the set of all sets of women)

Quantifiers: relations between two sets of sets

Maximization: the largest set in **X** such that there is no strict superset of in in **X**

> M(**X**) = { A &isin; **X** \| &not;&exist;B &isin; **X**( B &sups; A ) }

+ This is the representative set of **X**. It has all **X**'s base elements.
+ Used to define properties of generalized quantifiers over plural predicates: conservativity, lifted quantifiers

Dependencies between variables

+ Every man loves a woman.
    + They prove this by giving them flowers
    + Therefore, every man gives her flowers
    + and she loves him right back
    
The elements of *woman* are given different dependencies to the elements of *man*. Distributing over *man* will end up dividing up *woman*.

Vdb encodes dependencies by interpreting formulas relative to a set *G* of assignments that each sign a singular object to the variable.

> G(x) := { g(x) | g &isin; G } for every x

 G | x    | y    
:-:|:----:|:----:
 g | john | mary
 h | bill | sue
 k | chaz | mary
 l | tom  | joan 

G makes true:

+ John loves Mary
+ Bill loves sue
+ Charles loves mary
+ Tom loves joan

Projection of an induced subset:
  
> G|<sub>x=d</sub> = { g &isin; G \| g(x) = d }
> G|<sub>x &isin; D</sub> = { g &isin; G \| g(x) &isin; D }

Distributive operator

||&delta;<sub>x</sub>(&phi;)||<sup>G</sup> = &forall;d &isin; G(x)( ||&phi;||<sup>G|<sub>x = d</sub></sup> )

+ For each d in the set of assignments to x, &phi; is true relative to the individual assignments that have x assigned to d.
+ This partitions G based on the value assigned to x
+ As a result, y assignments are also divided up along those lines.

> Every man loves a woman and he admires her, too.

||&delta;<sub>x</sub>(**admire**(x,y))|| = &forall;d &isin; G(x)( ||**admire**(x,y)||<sup>G|<sub>x = d</sub></sup> )

 x                              | y                               
:------------------------------:|:------------------------------:
 G<sub>x=john</sub>(x) = {john} | G<sub>x=john</sub>(y) = {mary}
 G<sub>x=bill</sub>(x) = {bill} | G<sub>x=john</sub>(y) = {sue}
 G<sub>x=chaz</sub>(x) = {chaz} | G<sub>x=john</sub>(y) = {mary}
 G<sub>x=tom</sub>(x) = {tom}   | G<sub>x=john</sub>(y) = {joan}

+ Women are co-distributed with men.

> Every man loves a woman and she loves him right back.

||&delta;<sub>y</sub>(**loves**(y,x))|| = &forall;d &isin; G(y)( ||**loves**(y,x)||<sup>G|<sub>y = d</sub></sup> )

 x                              | y                               
:------------------------------:|:------------------------------:
 G<sub>y=mary</sub>(x) = {john,chaz} | G<sub>y=mary</sub>(y) = {mary}
 G<sub>y=sue</sub>(x) = {bill}       | G<sub>y=sue</sub>(y) = {sue}
 G<sub>y=joan</sub>(x) = {bill}      | G<sub>y=joan</sub>(y) = {mary}
 
+ The y restricted subset of G leaves multiple g(x) for the value *mary*, so the distribution is not one-to-one.
+ Since distributions are variable sensitive, it is best to think of distributing over one variable as inducing a *pseudo-distribution* over the other.

> A variable y is **dependent** on a variable x with respect to a state G if there are elements d,e &isin; G(x), such that G<sub>x = d</sub>(y) &ne; G<sub>x = e</sub>(y).
> 
> In general, states G and H **express the same dependencies**, written as G == H, iff for all variables x<sub>1</sub>,...,x<sub>n</sub>,y and values d<sub>1</sub>,...,d<sub>n</sub> G<sub>x<sub>1</sub>:=d<sub>1</sub></sub> ... <sub>x<sub>n</sub>:=d<sub>n</sub></sub>(y) = H<sub>x<sub>1</sub>:=d<sub>1</sub></sub> ... <sub>x<sub>n</sub>:=d<sub>n</sub></sub>(y)

+ Introduce a *dummy* variable for individual assignments that do not give a value to a particular variable.


