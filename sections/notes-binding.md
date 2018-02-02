+ The bears discourse
+ Elements of its interpretation 
+ An information structure approach
  - Focus and question answer congruence
  - The issue of contrastive topic
  - Buering's solution
  - My concerns
  - Forward looking element
  - Accommodation reliance
+ A denial best approach
  - Contrast as representing correction
  - Layers and information annotating
  - Denial as downdate
  - My concerns
  - Binding problem
  - Downdate versus refinement
+ The importance of coherence
+ The conjecture/correction approach

# Non-swamping negation

In his discussion of negation in its denial making use, Bart Geurts (1998) maintains that denial is neither *unitary* nor *swamping*. It is not unitary beacause there are a wide variety of ways in which negation can encode denial, and there is little reason to believe that a single mechanism subsumes tham all. It is not swamping in that negation selectively denies bits of information conveyed by an utterance, granting other bits space in the conversational record. Consider the possible exchanges in *Movie*:

A: The movie was funny.
B': The movie wasn't [funny]<sub>f</sub>, it was [hilarious]<sub>f</sub>.
B'': [The]<sub>f</sub> movie wasn't funny, they [all]<sub>f</sub> were.
B''': The [movie]<sub>f</sub> wasn't funny, the [film]<sub>f</sub> was.

In *Movie*, A carries a packet of information. In the responses, we alternately have denial of an implicature (a), a presupposition (b), and a choice of words (c). In each case, the rest of the packet remains untouched, and may even be available for anaphoric reference later on, as in C, taken as a follow up to B':
  
C: Some of its writing was a bit trite.

In C, *its* is anaphoric on the introduction of a dref for *the movie* in A. If denial is swamping, we would expect this reference to fail, as denial is a means of keeping information out of the DRS. Since B' is directed at A, swamping denial removes all effects of A, including its introduction of drefs. [Or, we don't have to presume that functions by removing info vs. preventing it admission. The swamping comes from the issue that the denial introduces a bit of information that directly conflicts with previously entered info. The result is an inconsistent DRS, which collapses into meaninglessness.]

LDRT implements a non-swamping form of denial by first indexing all information added to a DRS to a layer based on its function, be that semantic content, presupposition, implicature, or tone. Certain information may get duplicated at multiple levels if it serves multiple functions when introduced. Conflict is restricted to these layers, and so, resolving it (by removing one element of the conflicting pair) can be achieved without affecting the information at other layers. This explains how that information can still be used for other interpretive functions post denial resolution.

# Binding

Geurtz and Maier's LDRT avoids the binding problem by intermingling the layers. Information is indexed with its layer, but quantifiers can bind variables and conditions introduced into different layers at once.

> The problem arises, obviously, because presupposed and asserted content are separated too strictly, and it is the opposite from the problem discussed above: the DRT treatment of presupposition does not run into the binding problem because it keeps presuppositions and assertions together, though for other reasons they should be differentiated more than they currently are, as we have seen.

**Presupposition:** Someone managed to succeed George V on the throne of England.

*Managed* triggers a presupposition to the effect that *It was difficult for someone to succeed George V on the throne of England*. In a standard quantificational logic that interprets presuppositions on a different dimension from semantic content, this presupposition comes out true. After all, many individuals in the domain had difficulty in succeeding George V to the throne. [It seems to me that this way of putting things carries its own presupposition that these folks *did* succeed, but I guess we can sen that aside.] But the sentence is marked because the presupposition fails. The one who did succeed George V on the throne had no difficulty doing so. [Edward VIII was George V's eldest son, and gained the throne by the normal course of succession upon George V's death in 1936.]

The issue, it would seem, is that because the two sentences are interpreted at different dimensions, the binding of their variables are independent. But the intuitive force of the presupposition is that *the very same* someone who succeeded the throne also had difficulty.

DRT avoids the binding problem by interpreting both sentences within the same DRS. Thus, they are seens as two conditions whose anaphora are resolved to the same dref. Thus, they remain connected enough to effectuate the same binding arrangement. LDRT, by indexing the conditions to different levels within the DRS, allows the conditions to remain separate enough to allow for such phenomena as non-swamping negation.

**Requantification:** A dog is usually [intelligent]_F.

Focused information is another cadidate for receiving separate treatment from semantic content. But the example above shows that separating it too strongly generates binding problems.

A common way of interpreting focus is as introducing information into a restrictor for the adverb of quantification. It adds a partitioned space, based on alternatives to the focused phrase. Thus, we get:
  
A: Usually (a dog is either intelligent or moderately clever or dumb or...) (a dog is intelligent)

But the presence of the two quantificational phrases is problematic if the interpretation of the restrictor and scope take place in different dimensions. [Or, as Geurts and Maier put it, the two instances of *a dog* require two drefs to be introduced.] What we really want is something like:
  
A': Usually (a dog_i is either intelligent or moderately clever or dumb or...)(it^i is intelligent)

This interpretation is easily enough achieved by a version of DRT that places backgrounded information into the same DRS as at-issue content.

**Implicature (attitude):** Green thought that some of the madrigals were nice.

This utterances plausibly involves a scalar implicature that none of the madrigals were more than nice. An initial proposal for this implicature is:

A: Green thought that some of the madrigals were not more than nice.

But this does not capture the intended meaning because the *some* in the semantic content is not necessarily bound to the *some* in the proposed implicature. But merely restricting the quantifier in the implicature doesn't do the job either:
  
A': According to Green, the madrigals she thought were nice were not more than nice.

For, still assuming that *superb* entails *nice*, if Green found one of the madrigals to be superb, then the original utterance would be true while this implicature is false. Restricting the quantifier does not get us the force of implicature we are after. It may be that certain individuals in the domain that are not *the individuals in question* still meet the condition of the restricted quantification. We need a more direct way of tying the semantic content madrigals to the implicature ones. What we need is:

A'': Green thought (assertion) that [some of the madrigals]_i were nice, and she thought (implicature) that they^i were not more than nice.

Once again, DRT allows for just this interpretation.

**Non-literal meaning:** Someone used my after shave this morning.

This sentence can be interpreted in context to mean that the addressee is the presumed culprit, which is to say that *someone* is being used to co-refer with *you*.

* * * * *

But Spenader's issue is unique.  She is concerned with downdate, which involves removing information from a DRS and substituting in new information.  This substitution requires introducing new drefs, and thus, the binding problem arises anew.

Either this, or the theory will over generalize, unifying drefs where they should remain distinct.  EXAMPLES

Plausibility of keeping track of so many subscripts in the midst of discourse, but still having the ability to dispute earlier claims?  Something like a Kripke style problem with the Tarski truth level proposal for avoiding semantic paradox.

G&M problem: retraction can lead to unbinding of drefs

S&vL problem: treating denial as new DRS leads to binding problems

Layered DRT is an unstable equilibrium!
