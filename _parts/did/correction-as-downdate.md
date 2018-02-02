---
title: Correction as downdate
chapter: Dispute in discourse
---

# Denial as downdate

Before we get to my preferred account, it is worth exploring another approach to discourses such as [Bears](#bears-ex){: #bears-show .tooled} that does give pride of linguistic place to the corrective element of the completion utterance.

The completion utterance is distinctively *disputative*. It seems to simultaneously *deny* the original statement and *substitute* an alternative to it. Jennifer Spenader and Emar Maier {% cite spenader2009 | noname %}, expanding on work of Maier and Bart Geurts {% cite geurts1998a | noname + geurtsa | noname %}, attempt to treat corrections as *downdates* on the information state. On this proposal, the function of corrections is to remove from the discourse representation something that was previous added to it. A wrinkle is that corrections do not eliminate information wholesale. Consider, for example:

In this section, I examine the downdate account of denial in terms of its ability to capture the observations about [Bears](#bears-ex){: #bears-show .tooled} noted earlier.

## Denial and LDRT

In his discussion of negation in its denial making use, Bart Geurts {% cite geurts1998a | noname %} maintains that denial is neither *unitary* nor *swamping*. It is not unitary beacause there are a wide variety of ways in which negation can encode denial, and there is little reason to believe that a single mechanism subsumes tham all. It is not swamping in that negation selectively denies bits of information conveyed by an utterance, granting other bits space in the conversational record.[^facets]

<!-- Movie -->
{% ex Movie %}
  {{ "movie" | example: "sent" }}
{% endex %}

In [Movie](#movie){: #movie-show .tooled}, the initiation carries a packet of information. In the responses, we alternately have denial of an implicature (a), a presupposition (b), and a choice of words (c). In each case, the rest of the packet remains untouched, and may even be available for anaphoric reference later on.

In standard DRT, extended discourse is represented by a *discourse representation structure* (DRS), which is a pair of sequences of *discourse referents* (dref) and *conditions* (cond). Conditions place constraints on the model against which sentences are evaluated for truth, and drefs serve as the referents of pronouns and other anaphoric expressions invoked in the conditions. Sentences in context contribute conditions and drefs to the DRS by adding them to the appropriate sequence.

<!-- DRT -->
{% def Standard DRT %}
  {{ "pragmatics|drs" | formalize }}
  <hr>
  {{ "pragmatics|contributions" | formalize }}
{% enddef %}

Standard DRT, only defines an *update* function for sentences, but there is nothing preventing us from defining a *downdate*, whereby conditions or drefs are removed from the DRS. But in standard DRT, all information contributed by a sentence is added to the conditions sequence. Thus, removing information removes it wholesale, which is to say that standard DRT makes denial swamping.

To account for the selective nature of denial, Geurts and Maier {% cite geurtsa | noname %} develop *Layered Discourse Representation Theory* (LDRT). LDRT avoids swamping by indexing all information conveyed by a sentence (both conditions ad drefs) by its kind, which is a matter of the discourse function it performs. The system can recognize such kinds as asserted content (*fr*), presupposed content (*pr*), implicated content (*inf*), contextual information (*k*), and information about syntactic and phonological form (*fm*). The effect is that the information added to a DRS is segmented into different layers. Certain conditions and drefs may get reduplicated in different layers if that information plays multiple roles in the discourse. We will represent the layer to which a bit of information is assigned by a subscript on condition or dref it contributes.

To downdate, then, is to remove information from the DRS, but removing information of the presuppositional variety does nothing to the same information duplicated at the propositional level. The result is non-swamping denial.

There is an additional complication for the denial-as-downdate approach, familiar from the literature on belief revision {% cite agm1985 + levi1980 %}. An information state is always downdated in response to some impetus. The principal reason for performing a downdate is that the state has just been updated into incoherence, which is to say that an update operation has introduced information that contradicts information already present in the state. The role of the downdate is to remove enough information from the state to restore it to coherence. The problem is that, in general, there are multiple ways to perform this operation.

As an example {% cite gillies2004 %}, imagine I happen to believe both that at least one of coffeeshop A or B is open (*p*&or;*q*) and that coffeeshop A is open (*p*), which we represent as the deductive closure of the set containing these two beliefs: Cn({ *p*&or;*q*, *p* }). But I subsequently get strong evidence that coffeeshop A is not open, say I see a sign hanging in the door that reads "Closed all day for cleaning". Updating with this new evidence results in the belief state Cn({ *p*&or;*q*, *p*, &not;*p* }), which is just the universal set. I believe too much, and I must revise. But how much do I remove? Minimally, *p* will have to go. But what about *p*&or;*q*? The choice depends on the details of my epistemic situation.

Suppose I had seen you walking down the street carrying a cup of coffee. Knowing that there are only two coffee shops in town, I came to believe that at least one of them is open (*p*&or;*q*). Continuing along, I saw lights on in coffeeshop A, which led me to update my belief set with *p*. Only when I got closer did I see the sign. In this case, I have independent reason for my belief that one of the coffeeshops is open, and it seems that *p*&or;*q* deserves to remain. It seems that a *minimal* retraction, excising only the directly contradictory *p*, is the strategy that is called for.

But suppose, instead, that my first bit of evidence is the light coming from coffeeshop A. Since Cn({ *p* }) contains *p*&or;*q*, I similarly have to decide what to do with the disjunction when I read the sign. In this case, the natural response is that it gets swept out along with the removal of *p*. Minimal retraction fails to capture the derivative status of my belief in the disjunction.

The upshot is that the propositional content of the evidence that initiates the downdate is not sufficient to determine the extent of the downdate; we need, also, a way of representing the source of certain propositions that are candidates for removal. The standard solution is to supplement the information state structure with an *entrenchment relation*, which serves to rank elements of the state in terms of their susceptibility to removal. This puts constraints on how and information state is revised in response to its falling into incoherence: remove the information needed to restore coherence as well as any unentrenched information relevant to the retracted information.[^entrench] Crucially, the entrenchment relation constrains appropriate retraction, but it does not fix a unique revision strategy.

<!-- Downdate -->
{% def Correction as downdate %}
  {{ "contrast|downdate" | formalize: "notitle" }}
{% enddef %}

### Binding retractions

The LDRT approach provides an adequate explanation of certain cases of denial, but it does so by taking incidental advantage of an artefact of the DRT framework. A genuine solution would recognize that the value of DRSs is not that they allow for boundary crossing drefs specifically, but that they manage to interleave bits of information that play different interpretive roles. The dref/condition distinction is one such distinction in roles, but it is not the only one that potentially gives rise to binding-style problems. For example, BAF have shown that interaction between content types is also present for the at-issue/not-at-issue distinction:

The binding problem, originally introduced in a endnote to Karttunen and Peters' *Conventional Implicature* {% cite karttunen1979 | noname %}. In the system expounded in that paper, conventional implicature is set apart as a distinct dimension of content from the standard semantic content derived from the meaning of the words in a sentence and the way they are put together. Cleaving implicature from semantic content allows us to explain a number of interesting features about how conventional implicatures work, but it also makes it more difficult to explain the ways in which elements of semantic content can interact with elements of the implicature.

<!-- Managed -->
{% ex Managed %}
  {{ "managed" | example: "sent" }}
{% endex %}

The (a) sentence in [Managed](#managed-ex){: #managed-show .tooled} seems to implicate that the person who succeeded George V on the throne had difficulty in doing so. But the most natural way of representing the implicature as derived from the utterred sentence is does not capture this.

<!-- Managed -->
{% ex Managed semantics %}
  {{ "managed" | example: "sem" }}
{% endex %}

 And it is finding such inroads between severed contents that is termed the binding problem. The separation between levels of content also provides a way around the swamping worry for denial, but because the LDRT approach involves dividing content by way of indexing, we may be concerned that a binding problem will arise here as well.

But the system has a built in fix that it acquires from the structure of DRSs. In LDRT, while conditions are isolated in their layer, drefs are not. While drefs are introduced in a layer, they transcend that position and are shared by conditions at all layers. Thus, they form a glue that binds layers together just enough to avoid the binding worries.

At least, they avoid binding worries associated with drefs, such as Geurts and Maier's problem with madrigals.

<!-- Madrigals -->
{% ex Madrigals %}
  {{ "madrigals" | example: "sent" }}
{% endex %}

[Madrigals](#madrigals){: #madrigals-show .tooled} carries two implicatures in addition to its assertive content. It implicates first that *not all* of the madrigals are nice and also that the nice madrigals are *merely* nice. The first of these does not give rise to binding concerns, for there is no need to connect the discourse referent intdroduced by the existential quantifier to the variable bound by the implicated not-all quantifier. But the second does; if we represent implicated and asserted content as *fully* separated, then we fail to get capture the constraint that the *merely* nice madrigals are the same as the nice ones.

However, by allowing drefs to transcend layers, we can adequately link the conditions. Here is Geurts and Maier's analysis:[^madrigals]

<!-- Madrigals -->
{% ex Madrigals %}
  {{ "madrigals" | example: "ldrt" }}
{% endex %}

Jennifer Spenader joins Maier {% cite spenader2009 | noname %} in extending this approach to account also for the corrective potential of *contrast*. According to the extension, contrast is a general means of preventing material from entering the common ground. It's presence signifies that the information in its scope is being presented for a downdate operation.

<!-- Spanish -->
{% ex Spanish %}
  {{ "spanish" | example: "sent" }}
{% endex %}

In the completion of [Spanish](#spanish-ex){: #spanish-show .tooled}, the choice of connective (*but*) carries contrastive import; the second conjunct, in its scope, is a downdating correction of the initiation sentence. The first conjuct, preceded by the hedge term *well*, provides a concession to the initiation, indicating that the response is intended as a *refinement* rather than a swamping denial.

<!-- Spanish ldrt -->
{% ex Spanish semantics %}
  {{ "spanish" | example: "ldrt" }}
{% endex %}

# Collaborative inquiry and bare plurals

The general collaborative update framework, [developed in the previous chapter](/theory), forms the backbone of my preferred analysis of [Bears](#bears-ex){: #bears-show .tooled}. But the specifics of the discourse dynamics are partially determined by the semantic structure of the particular utterance involved. I suggest that collaborative effects assert themselves in the discourse through the conduit of the *bare plural* subjects. In the broadest possible strokes, the analysis interprets bare plural expressions as a form of universal quantifier, what I call *structurally universal quantifiers*. The semantic rules of structurally universal quantifiers reference both context and the pragmatic rules of collaborative discourse in determining their quantificational domain. This appeal to both semantic and pragmatic rules in the analysis means that we do not have a fully general pragmatic solution, and there is some reason to prefer a general approach to focus-related effects.
