---
title: Lewis on Order semantics and premise semantics
---

Starting point of theories of *truth conditional semantics*
  + default, update semantics not dealt with
Equivalence in finite case
  + the equivalence works becuase we only care about the *closest* worlds (or *maximal* premise sets). We only need a *coarse* ordering in this way. Thus we are able to ignore the partiality of ordering (or incomparability of some premise sets).

> This lumping and dividing turns out to be surprisingly powerful as a method for discriminating among worlds - so much so that, as will be shown, premise semantics can do anything that ordering semantics can. Formally, there is nothing to choose.

### Frames for the role of context

> The ordering that gives the factual background depends on the facts about the world, known or unknown; how it depends on them is determined -- or underdetermined -- by our linguistic practice and by context. We may separate the contribution of practice and context from the contribution of the world, evaluating counterfactuals as true or false at a world, and according to a ‘frame’ determined somehow by practice and context.

> Again we distinguish the contribution of the world from the contribution of a ‘frame’ determined somehow by linguistic practice and context. The world provides the facts, the frame selects some of those facts as premises. A counterfactual is evaluated at a world, and according to a frame.

### Ordering semantics for counterfactuals

> We define an ordering frame as a function that assignsto any world i a strict partial ordering Li of a set Si of worlds, satisfying the condition:
>
>   | **(Centering)** i belongs to Si; and for any j in Si, i Li j >   | unless i = j.
>
> (A strict partial ordering of a set is a transitive, asymmetric, binary relation having that set as its field.) We call j a closest A-world to i (according to an ordering frame) iff (i) j is an A-world, that is, a world where proposition A holds, (ii) j belongs to Sj, and (iii) there is no A-world k such that k Li j. We can lay down the following truth condition for a counterfactual from A to C (that is, one with an antecedent and consequent that express the propositions A and C, respectively): the counterfactual is true at world i, according to an ordering frame, iff
>
>  | **(OF)** C holds at every closest A-world to i.

### Premise semantics for counterfactuals

> We defme a premise @ame (Hi ) as a function that assignsto any world i a set Hi of propositions -- premises for i -- satisfying the condition:
>
>  | **(Centering)** i does, and all other worlds do not, belong to every proposition in Ht.
>
> An A-consistent premise set for i is a subset Of Hi that is consistent with the proposition A; and it is a maximal A-consistent premise set for i iff, in addition, it is not properly included in any larger A-consistent premise set for i. We can lay down the following truth condition for a counterfactual from A to C: it is true at world i, according to a precise frame, iff
>
>  | **(PF)** whenever J is a nonempty maximal A-consistent premise set for i, J and A jointly imply C.

### Equivalence of frames

> Given a premise frame ( Hi ), there is a natural way to derive from it an ordering frame ( Li ): let St be the union of the propositions in Hi; and for any j and k in S, let j Li k iff all propositions in Hi that hold at k hold also at j, but some hold at j that do not hold also at k. The worlds that can be ordered are those where at least some of the premises hold; a closer world conforms to all the premises that a less close world conforms to and more besides. If each Li is derived in this way from the corresponding Hi, it is easily seen that ( Li ) must be an ordering frame. Let us call the frames ( HI ) and ( Li ) equivalent.

### Equivalence of evaluation

> Equivalent frames evaluate counterfactuals alike, at least in the ftite case. Let ( Hi ) and ( Li ) be equivalent frames. Then for any propositions A and C and any world i, PF holds iff OF holds.
>
>  | Proof. Let j be any A-world and let J be the set of all propositions in Hi that hold at j. It is enough to show that (i) J is a nonempty maximal A-consistent premise set for i iff (ii) j is a closest A-world to i. We may assume that J is nonempty, else (i) and (ii) are both false. (+) If not (ii), we have k E A n Si such that k Li j. I &cap; K be the set of propositions in Hi that hold at k. K is an A-consistent premise set for i and it properly includes J, so not (i). (+) If not (i),J must be properly included in some larger A-consistent premise set for i, call it K. Take any k in A f~ f7 K. Then k L.ij,so not (ii). Q.E.D.

### Surplus information in premise frames

> By definition, every premise frame is equivalent to some unique ordering frame. However, two premise frames may be equivalent to the same order- ing frame. Suppose two premise frames are alike except that one assigns to i the premises {i} and {i, j, k} while the second assignsto i the premises {i,j} and {i,k}. Either way, the derived ordering Li is the same: Si is {i,j,k},i < j,i < k,and j ~ k. This means that premise frames contain surplus information -- information that makes no difference to the way the premise frames do their job of evaluating counterfactuals. Intuitively, this surplus information concerns the difference between ties and incomparabilities. The first of our frames represents j and k as alike in the way they differ from i, whereas the second represents them as departing from i in different directions. Ordering frames -- if they use strict orderings, as in my present formulation - omit this surplus information. Any two of them disagree in their evaluation of some counterfactual at some world, and from the fact that j ~ k we cannot tell whether to regard j and k as tied or as incomparable.
