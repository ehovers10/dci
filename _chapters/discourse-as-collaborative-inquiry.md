---
title: Project overview
date: 2018-01-31
level: 1
biblio: true
references: ""
js: [toc]
count:
  ex: 0
permalink: /overview
---

# From cooperation to collaboration

One important function of {% gloss discourse %} is to serve as a *cooperative exchange of information*.  In this capacity, discourses involve two or more individuals engaged in a project of increasing their mutual knowledge by using each other's stock of information to augment their own. In this form, discourse implements a jointly undertaken {% gloss inquiry %}, which in the words of Robert Stalnaker is, "the enterprise of forming, testing, and revising beliefs" {% cite stalnaker1987 | pages: p. ix | noname %}.

Discourse that implements a joint inquiry is {% gloss cooperative %} in the sense of Paul Grice, who suggests that that basic maxim of conversation is "make your conversational contribution such as is required, at the stage at which it occurs, by the accepted purpose or direction of the talk exchange in which you are engaged" {% cite grice1989 %}. A speaker presents some content in a way that makes room for responses that she anticipates her {% gloss interloctors %} are able to provide. A hearer considers the contribution, adds it to her personal model of the conversation, and adjusts her response to accord with the expanded model. The process iterates with the discourse participants alternating roles, always trying to make their contribution fit with what has predeeded it. 

But discourse isn't just cooperative in this sense -- it is frequently {% gloss collaborative %}. To explain the distinction, let's consider a metaphor: 

{% ex Wall Building %}
You and I are set to build a stone wall. We have before us a pile of stones of various sizes, as well as mortar and wheel-barrows and other tools necessary for the job. Some of the stones are small enough for a single person to move into position. To productively add these stones to the wall, one of us need only recognize the positioning of previously laid stones and place the new stone next to them in a neat fashion. This requries that we *cooperate* with each other in our placement of smaller stones. But some of the stones are quite large; they require us both to lift in unison and carefully place into position on the wall. To get these stones in place, we must the willing to *collaborate* in our efforts. While placing these larger stones requires an increased demand on coordination, the having them in place is potentially greatly minimizes the overall effort required to bring our wall building task to a close.
{% endex %}

In many ways, inquiry is a similar endeavor to wall-building. {% gloss Information %} takes the place of stones as the building blocks participants collectively heft, and {% gloss utterances %} take the place of hands and wheelbarrows as the conveyances of the building materials. Finally, our metaphor maps resolution of the {% gloss issue %} that spurred our entering into the inquiry to the completed wall.

To say that discourse commonly realizes a collaborative inquiry is to claim that successfully contributing to the discourse requires the efforts of multiple parties working in concert, not just serially. The goal of this project is to both motivate this idea and provide a model for how it can be implemented in a formal semantic/pragmatic system.

## Contribution types

Speakers can perform a variety of tasks in uttering meaningful strings in a discourse. The class of such possible illocutionary acts, or {% gloss speech acts %}, is incredibly numerous and nuanced {% cite searle1976 %}. We can draw subtle distinctions between, for instance, commanding and imploring or suggesting and hinting at.

But a more coarse classification of conversational moves can also be theoretically useful. While a hearer might respond slightly differently to a command versus a request, perhaps giving the content of one higher priority, the update to her model of the conversation that is required to process the new information is the same. The proposed classification, into what we might call *contribution types*, links speech acts to the procedure needed to incorporate them into the discourse model.

In attempting to motivate a particular classification into contribution types, Craige Roberts offers some *Linguistic desiderata for speech act theory*:

> A theory of speech acts should be linguistically motivated -- grounded in the conventional content of the utterances used to make them --  and explanatory, offering testable predictions about both (a) the kinds of speech acts attested across languages, and (b) in particular utterances, the kind of speech act we would take a speaker to proffer, given the conventional content of what she says and the context of utterance. {% cite roberts2016 | pages: pp. 1-2 %}

There is a clear connection between a contribution type of an utterance and the force or mood the utterance carries, though the connection is not direct {% cite starr2010 + portner1997 %}. The indicative, interrogative, and imperative moods are well-attested across languages. So, there is reason to think that the space of contribution types traces this division. Paul Portner suggests that utterances are connected to force by way of the semantic object that the utterance expresses.

> Atoms of morphosyntax contribute to meaning in a compostitional way, but force is not one of the aspects of meaning they contribute. Rather the result of compositional interpretation is always a traditional semantic object like a proposition or property (along with associated presuppositions and so forth, or course). Accorditing to our hypothesis, force is determined only indirectly, on the basis of those meanings. {% cite portner1997 | pages: p. 2 %}

Portner proposes a division of discourse models into three parts based on semantic object types.[^articulation]

{% def Discourse Model (Portner) %}
+ *Common ground:* A set of propositions representing the information that is taken for granted in the conversation. "The sentential force of declarative clauses is assertion, which is to say that they are conventionally used to add the propositions that they denote to the Common Ground." (p. 3)
+ *Question Set:* A set of sets of propositions representing the issues the interlocutors mutually agree to resolve. "The conventional force of interrogatives, Asking, is then the addition of the set of propositions denoted by the interrogatve to the Question Set." (p. 3)
+ *To-do List:* A set of properties, linked to a particular interlocutor, representing the states the interlocutor is committed to realizing. "In this context, the natural proposal to make for imperatives is that they are associated with a discourse object which is a set of imperative denotations.... Imperatives represent actions which the addressee should take; accordingly, we label this kind of set of imperative denotations a To-Do List.... The conventional force of imperatives, what we call Requiring, is to add the property denoted by the imperative to the addressee's To-Do List." (p. 3)
{% enddef %}

[^articulation]: The idea of treating discourse models as articulated information states is well-trod ground in formal semantics and pragmatics. See, for instance, {% cite murray2010 + starr2010 + farkas + anderbois2013 + brasoveanua + bittner2011 + groenendijk2009 %} These accounts take the elements of information states to be composed of set-theoretic constructs of basic semantic objects. The divisions are determined by particular functional roles the component of these elements play in the discourse. The classification into contribution types represents one such functional role articulation.

While mood is a good guide to the scope of contribution types, the desiderata for an adequate classification do not force us to trace the countours of mood precisely. Rather, Portner's classification points to a generalization of the classification procedure. In certifying a new contribution type genuine and distinct, we are looking to verify that instances of that type *operate on* information in a distinctive way. Assertions expand the context set, and questions partition it. The currency of inquiry is information, and its value is tied to the ways in which information can be put to use to advance the inquiry toward its goal.

It's a reasonable additional constraint that genuine contribution types are performed by way of a *conventionalized linguistic tool*. If a contribution belongs to a specific type, language will have found a way to implement that type. Assertions, questions, and commands are stronly tied to linguistic mood, but mood needn't be the only realization of contribution types. In fact, it is my contention that the speech act of {% gloss conjecture %} forms a genuine contribution type based on a distinctive mode of operating on information in an inquiry.

## Conjecture as a contribution type

In the course of conversation, individuals will ocassionally put forward information for which they do not possess conclusive evidence. Sometimes, the basis for such a maneuver is laziness, deceit, or obstinance. But often, this kind of move is just what the conversation needs to move forward. For instance, in brainstorming sessions, the scientific context of discovery, or tip-of-the-tongue style paralysis, discurrsants set aside the restriction that all contributions be considered to be accurate in favor of entering into the {% gloss conversational record %} something that the parties can use as a jumping off point. In these situations, speculative profferments serve to advance the inquiry.

Conjecture is often subsumed under a more general speech act category that also includes assertion. This category is for {% gloss world-directed %} speech acts that update the information state by adding information to the common ground. The sub-cateogries then differ in terms of the level of commitment to the utterance content that a speaker incurs in using that speech act. Robert Stalnaker's model for distinguishing among these speech acts involves the discourse-wide notion of acceptance that governs membership in the common ground.

> Whether an indicative speech act counts as an assertion or not will be partly a matter of what kind of discourse it is -- what its common purposes are taken to be. A more general kind of speech, still governed by the same context-change rule. will include conjectures and other less committal conversational rules. Just as what is mutually accepted for purposes of the conversation may in some cases involve a mutally recognized pretense, so in the right kind of context, the speech act itself may be a proposal to accept something only in a sense of acceptance that diversges from belief. {% cite stalnaker2014 | pages: Sect. 4.2 %}

This is a coarse-grained model of speech act variation. For Stalnaker, the common ground is merely a set of propositions. It does not also contain an additional marker for the commitment level of each member. Rather, the purposes of the conversation contrain membership in the common ground for all proposed contributions in that conversation. This doesn't clearly do justice to the evolution of natural conversations. Conjectures and assertions are commonly interspersed throughout a discourse. Keeping track of the varying levels of commitment would require a nest of different common grounds and a set of rules for how their members are shared. Depending on the fineness of grain for commitment levels, there is a potential explosion of sub-contexts for every conversation.

This is not to say that an account of the differences between conjecture and assertion based on discourse-wide commitment levels can't be provided, but it is not a simple task. And I believe that an alternative account of conjecture based on a distinctive mode of operating on information in an inquiry is forthcoming.

Stalnaker's approach to conjecture treats it as introducing a proposition for entry into the common ground with a less than assertoric commitment, but an alternative interpretation of the sense that conjecture carries a lower commitment level is that a conjecture's impact on the information state is *unsettled* in a way that assertions are not.

A speaker who puts forward a conjecture does not stand behind its content in the way that she does when she asserts. To treat the two types of act the same risks muddling the inquiry. If, instead, a conjecture is treated as merely a jumping off point, something to be settled after further discussion, we can capture the sense that it carries less commitment while keeping its impact distinct from that of an assertion. In essence, we recognize that a conjecture *calls out* for a particular response.

## Discourse Pairs

The idea that conversational moves can be understood partly in terms of the constraints they place on appopriate responses is widely accepted. Mats Rooth's alternative semantics theory of focus interpretation is motivated by the fact that felicity demands that answers be *congruent with* the questions that elicit them {% cite rooth1992 %}. Questions anticipate an answer, and restrict responses to those assertions that at least partially resolve the issue raised.[^QACongruence] The model of discourse developed by {% cite farkas2010 %} includes a slot fot the default response to an utterance contribution. Even assertion can be understood in part in terms of the appropriate response to it. It is common to distinguish between content that is *imposed* on the common ground versus content that is *proposed* as an addition {% cite murray 2012 + anderbois2012 %}. As a proposal to update the common ground, assertion anticipates either acceptance or rejection on the part of the hearer, and (modulo repair tactics for failed presuppositions) it restricts responses to either acceptance or rejection of the content. 

This anticipatory nature of utterances is indicative of the fact that discourse is an essentially collaborative process. At a superficial level, successful discourse requires that the participants accurately understand each others' contributions.  This requires constant feedback, step retracing, and repair to keep everyone on the same page.  But the importance of collaboration goes deeper than this.  Herb Clark and his contributors {% cite clark1992 | noname %} have documented a variety of discourse maneuvers in which individuals other than the interlocutor who initiates the contribution provide input essential to its completion. This has led Clark to suggest that discourse contribututions involve two distinct phases: the *initiation* and the *completion*. Crucially (and in general), responsibility for the two phases of contribution is distributed among the conversational participants.

Clark is primarily concerned with the phonological and syntactic representation of discourse contribtutions, and with how the collaborative process determines the reference of individual words. But the same insights extend to the level of semantico-pragmatic representation as well.

At its base, this common conversational move, a {% gloss conjecture %}, is a distinctive kind of {% gloss speech act %} in which the speaker offers up her content with a {% gloss world-directed %}, but less than {% gloss assertoric %}, force. But a conjecture does not advance the inquiry on its own. 

A conjecture needs to be vetted, and the canonical response to a conjecture is a move that provides this -- a {% gloss correction %}. Corrections can take many forms, but they normally involve two parts, a *denial* of some portion of the information previously put forward and a *substitution* for the denied information. The conjecture lays a rough foundation, and the correction builds upon it.

The dual conversational moves of conjecture and correction are what I call a {% gloss discourse pair %}. The key precept of collaborative discourse dynamics is that discourse pairs are the basic units by which {% gloss contributions %} to the inquiry are made. That is, we do not represent the conjecturer and corrector as each providing indvidually complete and jointly cooperative contributions to the discourse. Instead, the conjecture/correction pair together contribute to the inquiry; the parts are individually inert.



The project of using the notion of discourse pairs to develop and motivate a theory of collaborative {% gloss discourse dynamics %} has 3 parts:

> **[Conceptual](#concept):** Deriving collaborative discourse from inquiry by way of knowledge. Inquiry is deeply collaborative, and via a mutual, conceptual connection to knowledge, so too is discourse.


> **[Theoretical](#theory):** Development of a deeply {% gloss collaborative %} account of discourse dynamics and a formal model of {% gloss conjectures %} and {% gloss corrections %} within the {% gloss update semantics %} tradition.

> **[Practical](#practice):** Application of the collaborative framework to the phenomenon of {% gloss contrastive topic %}, implications of the collaborative model for the concept of linguistic {% gloss disagreement %}, and the {% gloss contextualism %} v. {% gloss relativism %} debate in semantics.

# Knowledge in the image of inquiry {#concept}

It is tempting to maintain that the {% gloss end of inquiry %} is truth. While possession of the truth may be what the inquirer is after, she wishes to possess it in such a way that she both *recognizes* and *accepts* it as the truth. The goal of engaging in inquiry is to achieve a *cognitive* state with true propositions as its content.

In contrast, C.S. Peirce and others following in his wake {% cite levi1980 %}, have suggested that truth is too lofty a goal; that the most we can genuinely hope for at the end of inquiry is the *settlement of opinion*, for:

> "it is clear that nothing out of the sphere of our knowlege can be our object, for nothing which does not affect the mind can be the motive for mental effort. The most that can be maintained is, that we seek for a belief that we shall *think* to be true. But we think each one of our beliefs to be true, and indeed, it is mere tautology to say so." {% cite peirce1877 | pages: p. 11 %}

In response, we could take the pragmatist bait and insist that truth is the end of inquiry simply because whatever is output from the process of inquiry *just is* truth. But we needn't take this line. We can cleave to a correspondence account of truth while maintaining that final aim of inquiry involves {% gloss wide content %} by delimiting a natural, restricted category of *proper* inquiry that can be reliably expected to produce true propositions.

Principally, proper inquiry is a rule governed process. Rule-following has the practical advantage of improving the reliability of the inquiry, but the connection to rule following is a conceptual one. The cognitive state that the inquirer seeks is *praiseworthy*, and one does not garner praise simply by stumbling onto true propositions. Undertaking the process of inquiry is important to earning the accolades that come with possessing the truth.

The end of inquiry, then is a valuable, cognitive state with true propositions as its content. Specifically, proper inquiry is a process that reliably produces justified, true belief. Modulo Gettier-type complications, the end of inquiry is *knowledge*.

If we had a solid understanding of the nature of knowledge, we could use the *end of* connection to extend our understanding to encompass inquiry as well. But the nature of knowledge is highly contested, and connections go both ways. I propose to investigate the basic structure of proper inquiry by looking to specific historical accounts of its importance, to take at face value the idea that the outputs of the process of inquiry are knowledge, and thereby to provide insight into the structure of the knowledge relation.

The key insight that arises from this investigation into proper inquiry is that it is a deeply collaborative process. By way of the *end of* connection, we have reason to represent the knowledge relation as similarly collaborative. In one sense, this idea is quite radical, in that it seems to eliminate the potential for solipsitic knowledge. But we can perhaps buff a few of the burrs off this conceptual edge, and the proposal garners support from the puzzles it can help to solve.

## Knowledge and the process of justification

One such puzzle derives from the fact that knowledge is more valuable than mere true belief, but as far as all one wants is to get to Larissa, a merely true belief will do as well as a justified, true one. The *swamping problem* is that there seems to be no value over and above the truth of the justified belief provided by its being so justified.

Reliabilist accounts of knowledge offer a reasonable story about the justification process, but they go wrong in suggesting that the value inherent in the process transfers over to its product. Linda Zagzebski {% cite zagzebski2003 | noname %} maintains that this problem suffices to undermine the reliabilist approach. But this is true only if we commit to treating knowledge as merely the output of a justifiying process. If we build the process into the knowledge relation, there is no need for the value to *transfer* at all.

The reliability of beliefs formed via inquiry is incidental. The central virtue of inquiry is that it provides one with an account. It allows an individual to stand up to challenges of their belief. And possessing this is more valuable than merely possessing the true belief. Socrates speculates with Meno that what separates knowledge from true belief is that knowledge is tied down by an account. The account doesn't get you to Larissa any more surely, but it can help you respond to detractors you find along the route. And this ability is worth posessing.

The inquiry-first account of knowledge is compatible with a view in which knowledge is the constitutive norm of {% gloss assertion %}. But it is ecumenical, in that this does not mean giving up on the virutes of a commitment-based account of the speech act {% cite macfarlane2005 %}. Since knowledge contains the commitment fulfilling process of inquiry as a part, it can serve as both the norm of assertion and ground the constitutivity of other commitments engendered by assertion.

## Dispute and collaborate

Disagreement has been a bit of a star figure in recent debates in the philosophy of language. Primarily, it has been used as a tool for assessing the adequacy of different proposals for the semantic contribution of certain expressions. Genuine disagreements, as opposed to spurious or merely apparent ones, intuitively require in the linguistic context or the minds of the disputants, the presence of some kind of content toward which the participants have incompatible commitments.

The contestants in battle disagreement are *absolutism*, *contextualism*, and *relativism*, and the standard scorecard has absolutism and relativism coming out on top in virtue of their ability to secure the requisite constant content across uses of the expression. Contextualism, it is charged, assigns contents to the utterances and thoughts of different individuals that have them incurring different, compatible commitments as a result of their utterances or thoughts.

Whatever stance we take on the outcome of this debate, disagreement does seem to be a valuable tool to have in the linguist's toolkit.  Language users have intuitions about the compatibility of sentences used in discourse, and linguistic theories ought to respect those intutions. But simply marking the presence of incompatible contents in a discourse is a relatively peripheral role for disagreement to play in lingusitic theorizing. As they stand, the semantic theories considered above give no insight into disputative discourse itself; they merely accord to a greater or lesser extent with one interesting consequence of such discourse.

The previous discussion has shown that dispute plays a significant role in the very structure of knowledge. Given broadly accepted connections between knowledge and discourse maneuvers, it also has implications for understanding the nature of discourse dynamics.

# Collaborative update semantics {#theory}

Conjectures are best understood as one half of a pair of moves in a discourse. A contribution is incomplete without both parts being incorporated. In general, discourse pairs are completed by someone other than the one who initiates them {% cite clark1986 %}. Thus, discourse pairs represent genuinely collaborative contributions to the inquiry, which can be fruitfully modeled within a natural extension to the {% gloss update semantics %} framework.

Standard update semantics is build upon a system of sequential additions to and operations on a shared {% gloss discourse space %}. By supplementing this framework with a middle ground working space, a discourse {% gloss sandbox %}, we can represent interlocutors' joint contributions, decomposed into {% gloss initiation %} and {% gloss completion %} phases.

I consider accounting for conjecture to be an adequacy condition on semantic theory in that conjectures form a well-defined class of linguistic tools that do important interpretive work that cannot be done better by some other (set of) tool(s).

## Genuine contribution types

A conjecture is a kind of conversational move. It is defined in terms of the role it plays in advancing the inquiry in which it occurs. While speech acts are finely individuated, there is a small set of {% gloss contribution %} types derivable from the goals of inqury.[^ConversationalForce]

[^ConversationalForce]: The notion in the text of *contribution type* is related to Paul Portner's *conversational force*, which he sees of as a notion, distinct from illocutionary force, that has implications for aspects of the grammatical system relating to syntax, semantics, and pragmatics.

The primary goal of inquiry is to come to know something one did not know at its outset.[^Kitioi] Thus, an individual can advance us toward that goal by submitting (proposing) information to be taken on as mutually accepted. We call this kind of contribution an {% gloss assertion %}.

[^Kitioi]: Knowledge as the goal of inquiry.

The end point of an inquiry depends in part on its starting point, which is the *issue* that is to be resolved by the process of inquiry. An individual can submit a new issue to the inquiry to be taken on as providing a new goal for the inquiry.  We call this contribution a {% gloss question %}.[^command][^mood]

[^command]: Sometimes added to this list of contribution types is the *command*, which proposes a non-linguistic demand upon a participant in the inquiry. The appropriate response to such a contribution is to make the world such that the demand is met (or to reject the demand itself).

[^mood]: Each of these contribution types has an associated linguistic mood. Inquiry is a structured process, in which it is important not only what information is available but also how it is to be put to use in reaching the goal. As an implementation of inquiry, linguistic discourse has conventional means of representing how the information is being put to use by a contribution. But the scope of contribution types is not limited by the set of conventional moods. Nor do I think the concept of *linguistic mood* cuts along the same joints as that of *contribution type*. What is important for a contribution type is that there is a recognizably unique way in which information is put to use to further the goals of the inquiry.

These commonly cited examples do not provide an exhaustive list of conceptually possible contribution types. I don't intend to provide identity conditions for types of contribution, but the examples do share certain things in common, and their common traits can provide us with criteria for recognizing novel contribution types.

+ Genuine contribution types *operate on* {% gloss information %} in a distinctive way. Assertions expand the context set, and questions partition it. The currency of inquiry is information, and its value is tied to the ways in which information can be put to use to advance the inquiry toward its goal.
+ Conversational moves that contribute to inquiry *anticipate an appropriate response*, and *place constraints on the form of the response*. Assertion anticipates either acceptance or rejection of the asserted content, and (modulo repair tactics for failed presuppositions) restricts responses to either acceptance or rejection. Questions anticipate an answer, and restrict responses to those assertions that at least partially resolve the issue raised.[^QACongruence]
+ Genuine contribution types are performed by way of a *conventionalized linguistic tool*. If a contribution belongs to a specific type, language will have found a way to implement that type. Assertions and questions are stronly tied to linguistic mood, although the connection between these contribution types and mood is a tricky one {% cite portner1997 %} (starr2010).

[^QACongruence]: We'll revisit the anticipation and restriction of questions later on when we discuss focus and Q/A Congruence in [Chapter 3](/chapters/collaborative-disagreement.html)

I maintain that conjecture, when paired with a corresponding correction, constitutes a distinct, genuine contribution type. Conjecture is similar to assertion in that it seems to provide a proposal of added information. And similarly to questions, conjectures seem to present an issue that is up for further discussion.[^supposition] But conjectures are distinct from each of these, and call for a unique treatment. That they earn such status is what I hope to show throughout the course of this project.

[^supposition]: They are also similar to suppositions in that they seem to be less than fully committal on the part of the speaker. Assertion is generally associated with a commitment that it generates for the speaker.  This commitment involves some evidential relation between the asserter and the information conveyed, though it is controversial just what relation it is. But whatever the relation amounts to, it seems clear that we sometimes offer contributions to discourse that go beyond the evidence we have available. And we do this not just as a means of flouting the rules of discourse, but frequently in order to respect the project of the communicative exchange.

## Levels of dynamism

It is folly, Frege {% cite frege1884 | noname %} warned, to ask for the meaning of a word in isolation, prescribing instead that the sentence as a whole be the proper unit of semantic investigation. The dynamic turn in semantics did Frege's *context principle* one better. On the basis of anomolous linguistic data involving anaphora resolution, attention was shifted from single sentences to the broader linguistic context in which their specific instantiations appear. Thus it has been suggested that the proper units of linguistic evaluation are extended texts or conversations, what I refer to here as {% gloss discourses %}.

The many varieties of dynamic semantic accounts share in common a model of discourses in which there is exists a theoretical platform upon which information is built in a stepwise manner throughout the discourse. Each subsequent contribution to the discourse is analyzed in terms of what it constructs upon the platform or what previous construction it wipes away. The materials of which discourses are built include *possible worlds*, *situations*, *events*, *discourse referents*, and set-theoretic constructs thereof. This platform and its associated construction go variously by names such as *discourse representation*, *conversational scoreboard*, *common ground*, and *information state*. I couch my discussion within this broad tradition of theories and refer to the semantic representation variously as the *information state* or *state of information* of the discourse.

These semantic theories are dynamic in that they describe how new contributions to a discourse *respond to* and *modify* what has preceded, and discourse is very much dynamic in this sense. But by and large, they fail to capture another way in which discourse is dynamic. Contributions to discourse also *anticipate* what is to follow in the discussion, and this feature of how discourses proceed ought to be brought under the umbrella of semantic theory.

## Initiations, defaults, and sandboxes

To capture this anticipatory level of dynamics, I propose that we treat individual utterances as together forming a single evaluable contribution. We can model this idea by incorporating another Fregean insight into update semantics, treating the initiation phase of discourse contributions as *incomplete*, with the completion phase *saturating* it with the requisite informational material. It is only once saturated that the discourse content of an utterance is brought to light. However, initiations will ocasionally be treated on their own for purposes of evaluation. While I contend that instances where this is done are limited to non-canonical contexts such as presuppostion repair, it isn't strictly true that initations are *inevaluable* without a complementary completion. For this reason, we must also incorporate a notion of {% gloss default %} {% gloss saturation %}, in which context supplies the material needed for evaluation of the initiation. Defaults turn an initiation into a complete contribution, but they are also subject to override by a standard completion presented by a discourse participant.

The resulting picture is one of an extended and evolving, collaborative process surrounding each contribution to discourse. Initiations undergo a vetting procedure before they are entered into the official conversational record. To avoid contamination of the common ground with the untreated mess that many initiations carry, interlocutors must isolate the collaborative process from the conversational space. For this purpose, I draw the notion of a *sandbox* from the field of computer programming. A sandbox is platform cordoned off within a system where untested code can be executed and debugged under real conditions but without infecting the system as a whole if things go wrong. If the executed code is found to be functional, the restrictions can be lifted and it can be incorporated into the system. By introducing a sandbox-style working space within the conversational space as a whole, we can incorporate collaboration into standard update semantics.

The system of initiations, defaults, and completions, encompassed within a sandbox operating theater, provides our update semantics with a new type of dynamism. Standard dynamic accounts have it that utterance meaning depends on the surrounding linguistic context. But in collaborative update semantics, utterance meaning can actually change as the conversation progresses, and the status of an utterance evolves from initiation saturated with a default, through the sandbox vetting, and into the conversational record as a completed contribution.

# Collaborative disagreement {#practice}

Disputes can be frivolous, fractured, and fraudulent. They can derail conversations, and generate so much animosity that perpetuating the dispute itself comes to mean more than the prospect of resolving it.  These disputes may have very little to do with actual conflict over the informational potential of the disputative language used to express them, instead being driven by *ad hominem* and *ad ideologiam* tendencies.

But dispute can also be a fruitful tool for people involved in an honest, cooperative attempt to further mutual knowledge. There is the ancillary fact that interlocutors sometimes lose track of the cooperative effort, and it is valuable to have a means of correcting them to bring them back on to the task at hand.  But dispute can play also more central role in the project of inquiry. As we have seen, the speech act of correction, in which an individual denies a proposal initiated by an interlocutor is a crucial element in properly vetting conjectures in discourse. As such, some element of dispute is central to the enterprise of inquiry. I contend that the conjecture/correction discourse pair provides a genuine contribution to inquiry. In the previous chapter, I motivated this status by providing a model of discourse dynamics that carves out a distinctive operation on information that this contribution makes. In this chapter I explore another criterion for genuine contributions: that it be represented in some conventionalized linguistic tool. I think that this tool is {% gloss focus %}, and that the virtues of collaborative discourse dynamics come to prominence in explaining focus interpretation when we examine {% gloss contrastive topic %} specifically.

Consider the following little discourse:

{% ex Grizzly %}
  {{ "grizzly" | example: "sent" }}
{% endex %}

Pretheoretically, the response utterance seems to do two things:

+ It denies an element of the preceding contribution to discourse.
+ It provides a positive contribution that is related in a salient way to the previous contribution.

I think that it pulls off this dual task because it serves as a completion of the initiation provided by the first utterance. To motivate this claim, I look at two alternative accounts of this sort of disputative discourse and find them lacking.

## Questions under discussion and plans of inquiry

A salient feature of the [Bears](#bears) dialogue is the presence of {% gloss focus %} on *grizzly* in the response utterance. Focus is a lingusitic tool whose use serves primarily to *package* information as opposed to providing its own contribution. It distinguishes the elements of a sentence that are new to the discussion from those that have already been introduced, thus showing to the other participants in the discourse how the contribution is intended to fit in with what has preceeded. In this sense, focus has a distinctly *backward looking* function. It depends on, and responds to, previous moves in the conversation. So it makes sense that the most common analyses of focus interpretation assign it a *presuppositional* pragmatic function. Focus adds a *felicity condition* to the overall import of a sentence; the sentence is interpretable in situ only if material matching the focus semantic value of the sentence can be found in the previously constructed conversation.

The Question Under Discussion model of discourse dynamics, developed principally by Craige Roberts {% cite roberts1998 | noname %}, expounds on the alternative semantics account by treating discourse as governed by a stack of questions. The governing question at any point in a discourse may have been explicitly asked or it may be implicit, presumed by the discourse participants and revealed in the information packaging of their utterances.

Daniel Bu&#x0308;ring {% cite buering2003 | noname %} (,buering2008) extends the QUD model to capture second-occurrence focus, also called *contrastive topic*. But there is an issue in this extension when applied to cases such as the [Bears](#bears) dialogue. It is not so much an issue of empirical coverage as it is a conceptual issue having to do with the role of corrections in discourse evolution. The QUD model of contrastive topic makes its discourse contribution entirely backward looking. Whatever role the focus plays is just a matter of checking prior discourse for an antecedent to the focus-generated alternative set.

The [Bears](#bears) dialogue is an example of felicitous use of contrastive focus in which there is no expicit question on the table at all. It seems to me that the role of the focus in [Bears](#bears) is more than simply to mark the way the response fits into previous discourse; it genuinely advances the inquiry along by correcting what predeeded. But to capture this added feature, we needn't dispose of Bu&#x0308;ring's useful {% gloss plan of inquiry %} entirely. What we need is an expansion of the structure involved in such plans to include conjecture/correction congruence in addition to question/answer congruence. Focus, fundamentally, serves to indicate information structure, but information structure includes much more than just what is given and new. It incorporates a record of where the inquiry has been as well as where it is going.

## Correction as downdate

Equally salient in the [Bears](#bears) dialogue is the disputative nature of the response statement. It seems to simultaneously *deny* the original statement and *substitute* an alternative to it. Let's call utterances with this dual function *corrections*. Jennifer Spenader and Emar Maier {% cite spenader2009 | noname %}, expanding on work of Maier and Bart Geurts {% cite geurts1998a | noname %} (,geurtsa), attempt to treat corrections as *downdating* the information state. On this proposal, the function of corrections is to remove from the discourse representation something that was previous added to it. A wrinkle is that corrections do not eliminate information wholesale. Consider, fo example:

{% ex Movie %}
  {{ "movie" | example: "sent" }}
{% endex %}

Crucially, the correction above does not eliminate the information that the movie was funny. In fact, the replacement is perfectly compatible with this information. What the correction denies is the presupposition of the initial statement that the moview was *merely* funny. To account for the nuanced nature of corrections, Spendader and Maier develop their proposal within the framework of Layered Discourse Representation Theory (LDRT), in which information states are segmented and different information contributed to discourse is tagged and placed in different segments depending on its import. Corrections can eliminate information from one segment without affecting the information in any other segment.

The challenge is to track information across utterance boundaries. LDRT allows for a single bit of information to be added to multiple segments, but when corrections take place at a remove from the utterance they correct, the proposal runs into a *binding problem*. This problem is, I think, undermining, and it reveals an inherent limitation of the LDRT account. LDRT treats utterances as providing independent contributions to the discourse either in the form of updates or downdates. But the [Bears](#bears) dialogue is not just a pair of independent utterances. They cohere in an important way that should be accounted for in any representation of the discourse.

## Collaborative update semantics

If we treat the [Bears](#bears) dialogue as a minimal example of collaborative discourse, we can capture the forward-looking import of corrections while representing the strong coherence of the utterances in the dilogue.

According to collaborative update semantics, the first utterance in the dialogue initiates a contribution that is completed by the second, correcting utterance. Focus is treated as a sandboxing marker and denial serves to replace the default saturation of the propositional radical with an alternative one.
