---
title: Focus
chapter: Dispute in discourse
---

A salient feature of the [Bears](#bears-ex){: #bears-show .tooled} dialogue is the presence of {% gloss focus %} on *grizzly* in the completion. Focus is a lingusitic tool whose use serves primarily to *package* information carried by other components. For instance, focus can be be used to divide the informational content of an utterance into that which is assumed to be part of the common ground and that which is newly contributed {% cite jackendoff1972 %}. The virtue of information packaging is in aiding uptake for the other participants in the discourse by showing them how the contribution is intended to fit with what has preceeded.

Well established theories of focus interpretation exist. If one of these could be marshalled to explain the distinctive discourse-dynamical features of [Bears](#bears-ex){: #bears-show .tooled}, we would not have to resort to positing drastic discourse-structural modification. In this section, I explore an alternative semantics account of focus interpretation in terms of its ability to capture the observations noted above.

## Focus and alternatives

One of the most influential accounts of focus interpretation is the *alternative semantics* developed by Mats Rooth {% cite rooth1985 | noname + rooth1992 | noname %}. The idea behind alternative semantics is that focus-sensitive constructions have two semantic values: an *ordinary* semantic value and a *focus* semantic value. The ordinary semantic value is whatever linguistic theory minus a theory of focus comes up with. And the focus semantic value for an expression is a set of *alternatives* to the ordinary semantic value. That is, the focus semantic value collects together all elements from the domain of discourse that are type-identical to the focused element of a phrase. More formally:

<!-- Focus semantic values -->
{% def Focus Semantic Value %}
  {{ "contrast|focus" | formalize: "notitle" }}
{% enddef %}

Since focus-related effects can influence interpretation at nearly any level of linguistic analysis, expressions of all types will also be associated with a focus semantic value of the appropriate type. Rooth {% cite rooth1985 | noname %} also provides a recursive definition that allows one to derive focus semantic values for expressions containing focused elements as proper parts. As an example, in the case of full sentences, alternative semantics suggests that "the focus semantic value for a phrase of category *S* [sentence] is the set of propositions obtainable from the ordinary semantic value by making a substitution in the position corresponding to the focused phrase" {% cite rooth1992 | pages: 2 %}.

By adding this additional resource to the semanticist's tool bag, the alternative semantics account of focus promises to provide a unifying explanation of the myriad focus-related interpretive effects. The idea is that the two types of semantic value interact with various semantic and pragmatic rules to give the intended interpretations of focus-sensitive constructions. The principle job of the semanticist is then to discover the requisite rules governing the interaction between the two semantic values.

## Questions under discussion

A feather in the cap of alternative semantics is the explanation it gives for the phenomenon of question/answer congruence. QA-congruence is exhibited in the following example:

<!-- Cookie -->
{% ex Cookie %}
  {{ "cookie" | example: "sent" }}
{% endex %}

While the **B** answer in [Cookie](#cookie){: #cookie-show .tooled} is a perfectly appropriate response to the question, **B'** seems to miss the point of the disucssion proposal made in **A**. It would appear that there is a pragmatic rule dictating the form of response that can {% gloss felicitously %} follow a question, and that focus plays a role in the pragmatic process. Roughly, the data suggest that the focused element in a response must correspond to the wh-word of the question to which it is a response.

The alternative semantics for focus provides us with the framework needed to explain the presence of this pragmatic rule. Questions are generally understood to have as their semantic value the set of propositions that constitute answers to the question {% cite hamblin1958 + groenendijk1984 %}. So, a (suitably contextually constrained) semantic value for the question in [Cookie](#cookie){: #cookie-show .tooled} might be as in **A** below, which is identical to the focus semantic value of the first response but differs from that of the second:

<!-- Cookie sem -->
{% ex Cookie %}
  {{ "cookie" | example: "sem" }}
{% endex %}

Thus, we supplement the dual-semantic values framework of alternative semantics with a pragmatic rule to the effect that a felicitous response to a question must have a focus semantic value that matches the ordinary semantic value of the question.[^roothgen] Formally:

<!-- QA-congruence -->
{% def Question-Answer Congruence %}
  {{ "contrast|qa-congruence" | formalize: "notitle" }}
{% enddef %}

Craige Roberts {% cite roberts1996 | noname %} develops an integrated theory of pragmatics centered on the question/answer relationship. Her idea is that questions and answers provide the principle organizing structure of discourse. The relevance of a new contribution to the conversation is thus judged in terms of how it fits into that structure. The central order of business in a discourse is to answer the question under discussion (*QUD*). But the path to reaching the answer may not be direct. It can involve providing merely partial anwsers, or it can involve introducing a sub-question, getting the answer to which would aid in getting the answer to the original question.

By whatever path the discourse participants make their way, they are constantly coordinating their contributions around the *QUD*. To be relevant, an assertion must provide at least a partial answer to this question {% cite roberts1996 | pages: 21 %}. Roberts takes questions to have the standard, set of propositions, semantic value, which provides for a natural, set-theoretic account of the partial-answerhood relation. A partial answer to a question *q* is a proposition that entails, for at least one member proposition *q*<sub>i</sub> of the interpretation of the question, either that *q*<sub>i</sub> is true or that it is false. If the dynamical function of asserting is to eliminate certain propositions from the common ground, then the *QUD* framework requires that felicitous assertions eliminate along the contours of the *QUD*. An assertion whose content cross-cuts the partition of the common ground imposed by the QUD fails to provide a relevant contribution to discourse.

The *QUD* model can easily incorporate everything above regarding QA-congruence and focus interpreation. But, not all conversations begin with an explicit question. Many start with an assertion, and roll along fruitfully from there. In Roberts' framework, the discourse structure is a theoretical posit --  a set of organizing principles that unify a set of apparently disparate data points drawn from speaker intuitions about semantic content and pragmatic felicity. As such, *QUDs* needen't be drawn from actual utterances in the discourse; it is perfectly possible for them to be implicit in the conversation. While every appropriate assertion must bring us closer to an answer to some question, discourse participants frequently {% gloss accommodate %} the question necessary to make sense of an assertion in context.

Accommodation is a powerful tool, but it cannot be comissioned to fix every gap in a theory of pragmatics, and the QUD model seems to have an issue right out of the gate. There are perfectly felicitous responses to questions that do not eliminate cells from the question's partition space.

<!-- Picnic -->
{% ex Picnic %}
  {{ "picnic" | example: "sent" }}
{% endex %}

The response in [Picnic](#picnic){: #picnic-show .tooled} involves two focused elements. For both elements, it is easy enough to generate the requisite alternative sets.

<!-- Picnic sem -->
{% ex Picnic semantic values %}
  {{ "picnic" | example: "sem" }}
{% endex %}

The alternative set generated for the second focused element (marked with a subscripted *f*), is perfectly congruent with the preceding question. But a difficulty arises when we attempt to apply the felicity condition to the element labeled with *cf* for *contrastive focus*. Its alternative set is distinctly not congruent with the preceding question, so we would expect the entire utterance to be marked as infelicitous.

Contrastive focus bears properties that are systematically different from standard focus. In particular, it is realized in English by a distinctive intonation pattern, labeled the B-accent to standard focus' A-accent {% cite buering2003 | pages: 512 %}. But the general function of highlighting some element from within a selected set of alternatives seems to be exhibited by focus in all its forms. The key, then, is to locate an antecedent in prior discourse to which the semantic value of the contrastively focus ed element conforms.

Daniel Bu&#x0308;ring {% cite buering2003 | noname %} develops a technique to locate the requisite antecedent.  Building on the *QUD* model, Bu&#x0308;ring posits the existence of a *discourse tree*, which generates additional structure in the inquiry. Each question governing the inqury is a node in the tree and is associated with an array of subquestions, complete answers to which constitute partial answers to the parent question.  The idea is that the subquestions provide a _plan of inquiry_ for addressing the parent question. The objective of the inquiry is to answer the top-most question in the tree. The plan for doing so is to answer each of the subquestions in turn.[^stratq] Thus, the implicit structure of the [Picnic](#picnic){: #picnic-show .tooled} can be made explicit as:

<!-- Picnic structure -->
{% ex Picnic structure %}
  {{ "picnic" | example: "extra" }}
{% endex %}

The role of contrastive focus, according to Bu&#x0308;ring, is to mark an utterance as directed at a particular subquestion of the *QUD*. The response in [Picnic](#picnic){: #picnic-show .tooled} is congruent with the (c) subquestion in [Picnic structure](#picnic-structure){: #picnic-structure-show .tooled}, and we have the requisite antecedent to explain the felicity of the resposne.

## Advancement or accommodation

Of course, the question of how the antecedent subquestion enters the discourse structure is not a trivial one. It is clearly not something that was there before the response to the original question was made. The scope on felicitous responses involving contrastive topic is too broad for this to be the case, as the last item in [Picnic structure] demonstrates. That it can just as easily be read as felicitous suggests that the source of the requisite antecedent is not a subquestion entailed by the speaker's original question. It must, instead, be accommodated by the original speaker in hearing the otherwise relevant response.

The mechanism of accommodation is only loosely understood, but Richmond Thomason's {% cite thomason1990 | pages: 343 %} account in terms of obstacle elimination gives us something to grab on to:

> Obstacle elimination consists in (1) recognizing the plan of your interlocutor; (2) detecting obstacles to the plan in the form of certain false preconditions of subgoals belonging to the plan; (3) adopting the goal of making these preconditions true; (4) forming a plan to carry this out; and (5) acting on this plan.

A cooperative interlocutor will carry out, to the extent they are able, elimination of obstacles to processing an utterance in the discourse context. With this story in mind, we can see how the original inquirer in [Picnic](#picnic){: #picnic-show .tooled} would reason in their attempt to accommodate their interlocutor's response:

> The speaker is attempting to answer my question, and he plans to do so by taking it in parts. But for his answer to be a partial answer to my question, there must be a sub-group of the picinic attendees who are "the children". As such, I will divide the picnic goers along the lines he suggests and impose the resulting structure on my question.

The story will have to be expanded some to bring discourses such as [Bears](#bears-ex){: #bears-show .tooled}, where there isn't even an explicit *QUD* to divide into sub-questions. But it seems clear that an accommodation invoking story could be told for this use of contrastive focus as well.

The common knock against appeals to accommodation is that it is too unconstrained. Detractors complain that it evokes the wielding of a magic wand where a more mechanical device ought to be employed. But such a response threatens to enmesh us in a nasty, "one person's trash..." sort of debate. Linguistic communication involves a mixture of domain specific tools and general rationality devices. And we don't have a reliable guide for how to delegate certain interpretive tasks.

The plan-of-inquiry-plus-accommodation story has a distinctive air of plausibility. And letting a general principle of cooperation (obstacle elimination) carry a large interpretive load allows us to maintain a cleaner conversational scoreboard. Yet, I'm swayed by the urge to mechanize the interpretive procedure, and my preferred approach shifts some of the load off of accommodation and back onto the scoreboard. My reason for this is that the accommodation story given above glosses over what I take to be an important function of contrastive focus in the [Bears](#bears-ex){: #bears-show .tooled}.

As we observed above, the completion utterance in [Bears](#bears-ex){: #bears-show .tooled} is both [corrective](#correction-obs){: #correction-show .tooled} and [productive](#productivity-obs){: #productivity-show .tooled}. These observations highlight the role of the completion as a driving element in the discourse. But the contrastive-focus-with-accommodation account doubly suppresses the importance of the completion. Focus has a distinctly *backward looking* function; it depends on, and responds to, previous moves in the conversation. So it makes sense that the most common analyses of focus interpretation assign it a *presuppositional* pragmatic function. As such, focus interpretation is reduced to the imposition of a *felicity condition* on the utterance. Pairing the presuppositional account of focus with a principle of accommodation gives the completion a semblance of productive, forward looking power, by having the accommodator introduce the discourse structure needed to interpret the completion. But the particular accommodation story undersells the corrective import of the completion. The responses utterance in [Picnic](#picnic){: #picnic-show .tooled} and [Bears](#bears-ex){: #bears-show .tooled} function to inform the initiator that their proposed plan of inquiry is too coarse to be effectively carried out. And the corrector offers a substitute, more refined, plan.

I take this to be an interesting and widespread discourse phenomenon, and one that deserves a more explicit linguistic representation than the accommodation account provides. I'm heartened in my decision to turn away from the lure of accommodation by what I think is a satisfying account of the dynamics of discourses involving contrastive focus, to be developed in the last section.
