---
title: Conjecture, Distributed Contributions, and Update Semantics
date: 2018-01-31
level: 1
biblio: true
references: ""
js: [toc]
count:
  ex: 1
  def: 1
permalink: /overview/
abstract: >
  I contend that exploring the speech act of *conjecture* reveals that discourse is a collaborative effort in which interlocutors contribute in parallel rather than just serially. To capture this, we must take the basic component of discourse update to be the *distributed contribution*, the initiation of which may be made by a different interlocutor than the completion. I motivate the development of an model of the conversational scoreboard that is expanded to accommodate distributed contributions by examining David Lewis' conception of language modeling. And I offer the framework for a formal system based on update semantics and augmented with a sandbox -- an isolated workspace within which interlocutors can hash out their collaborative efforts. 
---

## From cooperation to collaboration

One important function of {% gloss discourse %} is to serve as a *cooperative exchange of information*. In this capacity, discourses involve two or more individuals engaged in a project of increasing their mutual knowledge by using each other's stock of information to augment their own. Agents involved in this sort of discourse rely on eachother to be {% gloss cooperative %} in the sense of Paul Grice, who suggests that that basic maxim of conversation is "make your conversational contribution such as is required, at the stage at which it occurs, by the accepted purpose or direction of the talk exchange in which you are engaged" {% cite grice1989 %}. A speaker presents some content in a way that makes room for responses that she anticipates her {% gloss interloctors %} are able to provide. A hearer considers the contribution, adds it to her personal model of the conversation, and adjusts her response to accord with the expanded model. The process iterates with the discourse participants alternating roles, always trying to make their contribution fit with what has predeeded it. 

But discourse isn't just cooperative in this sense -- it is frequently {% gloss collaborative %}. To explain the distinction, let's consider a metaphor: 

{% ex Wall Building %}
You and I are set to build a stone wall. We have before us a pile of stones of various sizes, as well as mortar and wheel-barrows and other tools necessary for the job. Some of the stones are small enough for a single person to move into position. To productively add these stones to the wall, one of us need only recognize the positioning of previously laid stones and place the new stone next to them in a neat fashion. This requries that we *cooperate* with each other in our placement of smaller stones. But some of the stones are quite large; they require us both to lift in unison and carefully place into position on the wall. To get these stones in place, we must the willing to *collaborate* in our efforts. While placing these larger stones requires an increased demand on coordination, the having them in place is potentially greatly minimizes the overall effort required to bring our wall building task to a close.
{% endex %}

In many ways, inquiry is a similar endeavor to wall-building. {% gloss Information %} takes the place of stones as the building blocks participants collectively heft, and {% gloss utterances %} take the place of hands and wheelbarrows as the conveyances of the building materials. Finally, our metaphor maps resolution of the {% gloss issue %} that spurred our entering into the inquiry to the completed wall.

To say that discourse commonly realizes a collaborative inquiry is to claim that successfully contributing to the discourse requires the efforts of multiple parties working in concert, not just serially. The goal of this paper is to both motivate this idea and provide a model for how it can be implemented in a formal semantic/pragmatic system. I label the result *collaborative discourse dynamics*.

[The paper is divided into three parts: Development of collaborative inquiry, Collaborative discourse contributions by way of conjecture, Incorporating collaboration into an update semantics framework.]

In suggesting that the locus of information state update be shifted from single utterances to distributed contributions, we take on the burden of motivating the need for this departure and providing a formal system for its implementation. This project is my attempt to discharge this burden and offer a framework for *collaborative discourse dynamics*.

## Collaborative inquiry

Let us take as given that discourse participants carry a mental model of the conversation that both guides their interpretation of others' utterances and informs their own contributions. I'll follow David Lewis' {% cite lewis1979f | noname %} lead in referring to these mental models as conversational *{% gloss scoreboards %}*. The nature of the scoreboard is determined by the functions in performs in the process of discourse. 

### Basic structure and cooperative inquiry

At base, discourse implements a jointly undertaken {% gloss inquiry %}, which in the words of Robert Stalnaker is, "the enterprise of forming, testing, and revising beliefs" {% cite stalnaker1987 | pages: p. ix | noname %}. To model this role, the scoreboard must, at minimum, include a representation of one's state of belief at a given time. Since we are concerned with inquiries jointly undertaken, we refer to this state representation as the *{% gloss common ground %}*' -- those propositions taken to be mutually agreed upon by the participants. The common ground is common currency among theories of scoreboard structure, starting with {% cite stalnaker1978 %}. Being a set of propositions, the common ground determines a possibility space -- those possible worlds that are compatible with the mutually agreed upon information.

This basic structure is informed by the way the scoreboard evolves throughout conversation -- the process of revising the common ground as new information comes to light. Different types of contribution call for different organization of this information. Individual inquiries are guided by particular {% gloss issues %}. These are uncertainities that the inquirer sets our to resolve. To say that a proposition is uncertain in the context of inquiry is to say that it is neither ruled out by nor entailed by the common ground. Thinking in terms of the possibility space, issues divide the common ground into distinct regions, where worlds are grouped by the particular way the issue is resolved there. Thus, the introduction of issues as a means of guiding inquiry brings with it additional scoreboard structure {% cite groenendijk1999 + murray2014 %}. The common ground is partitioned by the guiding issue, and cooperative inquirers will attempt to contribute by revising along the lines it draws.

### Speculative leaps in inquiry

But it's common that inquirers not know what issues exist at the outset of an inquiry. Human reasoners do not have perfect introspection, and we don't know the full extent of what we don't know. Being satisfied with merely revising by eliminating known uncertainties when new information comes along will not inspire many interesting inquiries. We need a way of introducing new lines of inquiry even when doing so goes beyond the information we currently have. There's no way around this need for ampliative contribution to inquiry. Moreover, the problem of intuction shows us that there is no way of providing certain ground for any such contribution. As Bas van Fraassen has put it: 

> Given that traditional epistemology embodies false hopes never to be satisfied, we must try to find a different view of our epistemic condition, with new hopes and new dreams of its own. So here is our tragic protagonist, thrown into a world she never made, and she asks us: What does it take?
> 
> We answer her: it takes luck, courage, and technique; but the greatest of these is luck. {% cite vanfraassen2000 | pages: 273 %}

And so, in pursuing genuine increases our knowledge via inquiry, we must be courageous -- believing beyond our right to certainty -- and we must also be lucky -- finding ourselves in a circumstance where our courageous leaps are rewarded. Foregoing the blind scramble for security and succumbing to the necessity of luck is not, however, a submission to skepticism. But van Fraassen gives us some solace: luck is not blind, and it has a tendency to open its arms and soften our fall.

> If our pursuit of knowledge, however broadly or feebly construed, is to be successful, we must be lucky -- we have no way to constrain such fortune. This is the verdict on modern philosophy's misguided search for security. The history of Earth has seen great disasters that spelled the extinction of almost all life, including the dominant, best adapted among species. In each case, some forms of life happened to be suited to the radically and suddenly transformed circumstances -- thus evolution on Earth continued after all. See who was lucky and who was not! Look to those survivors, they weave not; neither do they spin; but fortune smiles on them. {% cite vanfraassen2000 | pages: 273 %}

The lucky ones are the survivors. They have no claim to having earned the traits that led them to survive, but they have the traits none the less. Thus, mechanisms of ampliative reasoning can provide a semblance of security, just not security in their lasting security. So long as we acknowledge their domain specificity and resign ourselves to their being subject to the whims of fortune, we can embrace them and reason with them while we remain so fortunate.

Us modern human inquirers are the lucky ones, and we can limn the nature of inquiry by looking to the tools we use get where our inquiries go. The collaborative nature of joint inquiry is one such tool. We can be courageous in our speculative leaps because our interlocutors possess the technique for correcting our course when we jump too far.

### Collaboration and error-avoidance

William James {% cite james1896 | noname %} famously noted that there are two independent and sometimes conflicting goals for those engaged in the pursuit of knowledge: (i) to avoid believing falsehoods and (ii) to acquire true beliefs. A clever agent could meet the goal of avoiding falsehoods by simply believing nothing at all, but they would thereby forfeit the virtue of believing truths. One could, alternatively, meet the goal of believing truths simply by believing everything, but doing so sacrifices entirely achieving the second goal. As James saw it, a strategy of inquiry that floats between these extremes is the path we ought to search for. This suggests that the motive to attain belief is not merely an incidental consequence of our inquisitive minds. It is, instead, an ocassional mandate of proper inquiry that the agent *strive* to believe truths, even if doing so risks importing error.

James maintained that if one's belief choice is *live*, *momentous*, and *forced*, then the will to believe rationally outstrips the fear of being wrong. But as a set of necessary requirements, this restricts speculative endeavors too much. Inquiry need not be momentous or forced for jumping to a conclusion to be epistemically fruitful. Mere time-sensitivity may be enough. Inquiry is a process that is undertaken by fallible individuals in real time. Such agents have limited access to information and limited resources to dedicate to the process of inquiry. Frequently, action is required before certainty can be obtained. And on many quotidian decision points, the risk of being incorrect is fairly low. It is *because* not every inquiry is momentous that striving for truth (and risking falsehood) is sometimes to be prefered. 

Striving for truth has two components. The first is an *impetus to revise*, a recognition of an inadequacy in our current state of information. The second is the *will to believe*, the process of adding a proposition to the common ground in the absence of certainty in its truth. Our task is to accommodate these elements into the conversational scoreboard in a way that explains of how this maneuver can be rationally viable.

#### Impetus to revise

To have a call for revision of one's information state is to recognize an inadequacy therein. Inadequacies can be of the sort in which an agent *knows too much*, in the sense that their information state is contradictory and thereby contains too much information.[^knowtoomuch] The means of rectifying this sort of inadequacy is accommodated on the Levi model, in the form of conditions on contraction. While all information states are, for Levi, equal in terms of adequacy, we can set the trivial state aside as the one state that always demands revision, and in particular, revision by contraction out of epistemic hell.

Inadequacies can also arise when one acknowledges that they *know too little*, in the sense that there is an issue that is not settled by their state of information. This sort of inadequacy is not to be accommodated in Levi's model. As defined so far, information states are nothing more than their members, and each state (potentially) contains infinitely many points. Aside from the situation in which one state strictly contains another, there is no way of saying that one state is more informative than another.[^contain]

Recognition of information state incompleteness is a principal impetus to revise, and we can represent this impetus by adding a new structural element to the information state pertaining to an inquiry. To have an unsettled issue is to have a non-uniformity across the information state with respect to a particular subject matter; certain points represent one resolution of the subject matter, other points a different resolution. Recognition of a non-uniform pattern holding across an information state can be modeled formally by means of a relation *R* defined over the membership of the information state, such that for any two elements of the state, *x* and *y*, *R(x,y)* just in case *x* and *y* agree on the subject matter of *R*. The effect is a partitioning of the information state into equivalence classes with respect to the issue that the agent's information state is unable to settle. The result is an information state that calls for revision, in particular, expansion by elimination of complete cells in the partition.

#### Will to believe

As it currently stands, our model of inquiry allows for propositions to be incorporated into information states in two ways. They can be consequences of evidence the agent acquires through their observational faculties, or they can be entailed by other propositions that are themselves consequences of such evidence. It follows from the Jamesian amendment that a rational inquirer may, at times, be warranted in taking on belief that is not conclusively established by either of these means. But we could easily incorporate this mandate, without modifying the structure of inquiry at all, by loosening the requirement for when a proposition counts as a consequence of an agent's evidence. The most natural constraint involves restricting our evidence to direct observation, but there is nothing in principle from incorporating propositions that merely have the *balance of reasons* tilted in their favor.

The problem with this proposal is the threat it poses to the first epistemic goal of error-avoidance. Once a belief is incorporated into an information state, it can be difficult to excise. And as more beliefs become incorporated, tracing the countours of their relative entrenchment becomes exceedingly tedious. The will to believe carries a risk of being wrong. Information states must be insured against this risk, and simply reducing entry requirements for membership in the information state does not provide any assurance.

Additionally, there does seem to be a difference between the two cognitive goals of the Jamesian Amendment. It isn't a difference in terms of their significance to the inquiry, but it does provide us with reason to represent differently the incorporation of propositions stemming from the two goals.

James' characterization of the motivation for the will to believe emphasizes that it is the *choice* that is genuine and calls for resolution. The essence of the genuine choice is that no particular resolution of the uncertainty demands selection, but still a selection must be made. We can capture this feature of proposition integration via the will to believe by focusing on the selected proposition's position within the partition we introduced to capture the impetus to revise. The will to believe is nothing more than selecting a prefered resolution of a recognized incompleteness in one's information state. Formally, this amendment requires only that the relation *R* that represents the partition impose an *order* on the members of the state. The result is an information state that both calls for revision and selects a preferred means of doing so.

This extension of inquiry based on the Jamesian amendment is intended to capture the abductive phase of inquiry. The two parts of the extension happen to map onto a commonly cited distinction within the abductive phase {% cite campos2011 + shanahan1986 %}. *Creative abduction* is associated with the scientific context of discovery. It is involved when an inquirer recognizes a scientifically fruitful question and develops a set of hypotheses that serve as potential answers to that question. Incompleteness, modeled as a partition on an information state, represents the output of creative abduction. The extension does not provide us, specifically, with an account of the conditions under which an information state comes to represent its own incompleteness. And this is all to the good, for creative abduction is notoriously unamenable to logical characterization. We don't have, nor do we want, a topic-neutral story of revision into incompleteness. But the extension does provide a uniform representation of what a state that *calls for* revision looks like.

The second part captures the value of *striving* for truth, which closely resembles the *selective* phase of abduction, in which the scientist chooses from amongst the set of viable hypotheses the one that best answers the question on the basis of a set of criteria that perhaps don't eliminate all other answers completely. This is the mode of reasoning known as *inference to the best explanation*. James' proposal was that, ocassionally, elimination of incompleteness is rationally preferred to remaining ambivalent even at the risk of being wrong. Modeling inquiry in this way thus makes it part of the domain of logic to specify the conditions under which selective abduction is warranted. What makes it the case, for a particular incomplete information state, that it is epistemically appropriate to complete it at the risk importing error?

For the deductive phase, a new structural posit answers only to the error-avoidance goal of proper inquiry. Specific properties of the revision operator are justified piece meal by way of a demonstration that each rule of expansion or contraction preserves truth, and thus avoids error.

But the motivation for the structural posits necessary to incorporate the abductive phase construed as above changes the game entirely. Demonstration is not the proper method of justification for a solution to an optimization problem. In its place, we want two things: (i) assurance that each criterion optimized over is secured to a high degree, and (ii) insurance that success on each criterion is insulated against success on the others. As applied to the Jamesian amendment, the first condition is met by reliability testing on the outputs of the selective abductive phase. To the extent that the inquirer tends to settle on true hypotheses, her process of inquiry is well calibrated. The second condition requires that the goal of truth acquisition does not radically undermine the goal of error avoidance. To meet this, our account of inquiry must incorporate protective insurance against the wanton incorporation of error in the course of the abductive phase. This, I contend, is provided by corrective mechanisms inherent in proper inquiry, mechanisms residing in the jurisdiction of the *inductive* phase of inquiry.

# Contribution types

Speakers can perform a variety of tasks in uttering meaningful strings in a discourse. The class of such possible illocutionary acts, or {% gloss speech acts %}, is incredibly numerous and nuanced {% cite searle1976 %}. We can draw subtle distinctions between, for instance, commanding and imploring or suggesting and hinting at.

But a more coarse classification of conversational moves can also be theoretically useful. While a hearer might respond slightly differently to a command versus a request, perhaps giving the content of one higher priority, the update to her model of the conversation that is required to process the new information is the same. The proposed classification, into what we might call *contribution types*, links speech acts to the procedure needed to incorporate them into the discourse model.

In attempting to motivate a particular classification into contribution types, Craige Roberts offers some *Linguistic desiderata for speech act theory*:

> A theory of speech acts should be linguistically motivated -- grounded in the conventional content of the utterances used to make them --  and explanatory, offering testable predictions about both (a) the kinds of speech acts attested across languages, and (b) in particular utterances, the kind of speech act we would take a speaker to proffer, given the conventional content of what she says and the context of utterance. {% cite roberts2016 | pages: pp. 1-2 %}

There is a clear connection between a contribution type of an utterance and the force or mood the utterance carries, though the connection is not direct {% cite starr2010 + portner1997 %}. The indicative, interrogative, and imperative moods are well-attested across languages. So, there is reason to think that the space of contribution types traces this division. Paul Portner suggests that utterances are connected to force by way of the semantic object that the utterance expresses.

> Atoms of morphosyntax contribute to meaning in a compostitional way, but force is not one of the aspects of meaning they contribute. Rather the result of compositional interpretation is always a traditional semantic object like a proposition or property (along with associated presuppositions and so forth, or course). Accorditing to our hypothesis, force is determined only indirectly, on the basis of those meanings. {% cite portner1997 | pages: p. 2 %}

Portner proposes a division of discourse models into three parts based on semantic object types.

{% def Portner's Discourse Model %}
**Common ground:** A set of propositions representing the information that is taken for granted in the conversation. 

> "The sentential force of declarative clauses is assertion, which is to say that they are conventionally used to add the propositions that they denote to the Common Ground." (p. 3)

**Question Set:** A set of sets of propositions representing the issues the interlocutors mutually agree to resolve. 
    
> "The conventional force of interrogatives, Asking, is then the addition of the set of propositions denoted by the interrogatve to the Question Set." (p. 3)

**To-do List:** A set of properties, linked to a particular interlocutor, representing the states the interlocutor is committed to realizing. 
    
> "In this context, the natural proposal to make for imperatives is that they are associated with a discourse object which is a set of imperative denotations.... Imperatives represent actions which the addressee should take; accordingly, we label this kind of set of imperative denotations a To-Do List.... The conventional force of imperatives, what we call Requiring, is to add the property denoted by the imperative to the addressee's To-Do List." (p. 3)
{% enddef %}

The idea of treating discourse models as articulated information states is well-trod ground in formal semantics and pragmatics. In addition to Portner's model, articulated states have been developed in {% cite murray2010 + starr2010 + farkas2010 + anderbois2013 + brasoveanua + bittner2011 + groenendijk2009 %}. These accounts take the elements of information states to be composed of set-theoretic constructs of basic semantic objects. The divisions are determined by particular functional roles the components of these elements play in the discourse. The classification into contribution types represents one such functional role articulation.

While mood is a good guide to the scope of contribution types, the desiderata for an adequate classification do not force us to trace the countours of mood precisely. Rather, Portner's classification points to a generalization of the classification procedure. In certifying a new contribution type genuine and distinct, we are looking to verify that instances of that type *operate on* information in a distinctive way. Assertions expand the context set, and questions partition it. The currency of inquiry is information, and its value is tied to the ways in which information can be put to use to advance the inquiry toward its goal.

It's a reasonable additional constraint that genuine contribution types are performed by way of a *conventionalized linguistic tool*. If a contribution belongs to a specific type, language will have found a way to implement that type. Assertions, questions, and commands are stronly tied to linguistic mood, but mood needn't be the only realization of contribution types. In fact, it is my contention that the speech act of {% gloss conjecture %} forms a genuine contribution type based on a distinctive mode of operating on information in an inquiry.

## Conjecture versus assertion

In the course of conversation, individuals will ocassionally put forward information for which they do not possess conclusive evidence. Sometimes, the basis for such a maneuver is laziness, deceit, or obstinance. But often, this kind of move is just what the conversation needs to move forward. For instance, in brainstorming sessions, the scientific context of discovery, or tip-of-the-tongue style paralysis, discurrsants set aside the restriction that all contributions be considered to be accurate in favor of entering into the {% gloss conversational record %} something that the parties can use as a jumping off point. In these situations, speculative profferments serve to advance the inquiry.

Conjecture is often subsumed under a more general speech act category that also includes assertion. This category is for {% gloss world-directed %} speech acts that update the information state by adding information to the common ground. The sub-cateogries then differ in terms of the level of commitment to the utterance content that a speaker incurs in using that speech act. Robert Stalnaker's model for distinguishing among these speech acts involves the discourse-wide notion of acceptance that governs membership in the common ground.

> Whether an indicative speech act counts as an assertion or not will be partly a matter of what kind of discourse it is -- what its common purposes are taken to be. A more general kind of speech, still governed by the same context-change rule. will include conjectures and other less committal conversational rules. Just as what is mutually accepted for purposes of the conversation may in some cases involve a mutally recognized pretense, so in the right kind of context, the speech act itself may be a proposal to accept something only in a sense of acceptance that diversges from belief. {% cite stalnaker2014 | pages: Sect. 4.2 %}

This is a coarse-grained model of speech act variation. For Stalnaker, the common ground is merely a set of propositions. It does not also contain an additional marker for the commitment level of each member. Rather, the purposes of the conversation contrain membership in the common ground for all proposed contributions in that conversation. This doesn't clearly do justice to the evolution of natural conversations. Conjectures and assertions are commonly interspersed throughout a discourse. Keeping track of the varying levels of commitment would require a nest of different common grounds and a set of rules for how their members are shared. Depending on the fineness of grain for commitment levels, there is a potential explosion of sub-contexts for every conversation.

This is not to say that an account of the differences between conjecture and assertion based on discourse-wide commitment levels can't be provided, but it is not a simple task. And I believe that an alternative account of conjecture based on a distinctive mode of operating on information in an inquiry is forthcoming.

Stalnaker's approach to conjecture treats it as introducing a proposition for entry into the common ground with a less than assertoric commitment, but an alternative interpretation of the sense that conjecture carries a lower commitment level is that a conjecture's impact on the information state is *unsettled* in a way that assertions are not.

A speaker who puts forward a conjecture does not stand behind its content in the way that she does when she asserts. To treat the two types of act the same risks muddling the inquiry. If, instead, a conjecture is treated as merely a jumping off point, something to be settled after further discussion, we can capture the sense that it carries less commitment while keeping its impact distinct from that of an assertion. In essence, we recognize that a conjecture *calls out* for a particular response.

## Distributed contributions

Discourse is an essentially collaborative process. At a superficial level, successful discourse requires that the participants accurately understand each others' contributions.  This requires constant feedback, step retracing, and repair to keep everyone on the same page.  But the importance of collaboration goes deeper than this. 

Herb Clark and his contributors {% cite clark1992 | noname %} have documented a variety of discourse maneuvers in which individuals other than the interlocutor who offer a contribution provide input essential to its meaningfulness. This has led Clark to suggest that discourse contribututions involve two distinct phases: the {% gloss initiation %} and the {% gloss completion %}. Crucially (and in general), responsibility for the two phases of contribution is distributed among the conversational participants. The very act of adding information to the discourse model is a collaborative, rather than merely cooperative, effort.

Contribution is thus dilated process, and interlocutors have a number of tools at their disposal for invoking and bringing the process to an end Clark and Schlegloff {% cite clark1992a | noname %}. A *try-marker* is a refering expression within an utterance that is marked to indicate the speaker's understanding that the hearer may not pick up on the reference. The speaker, not wanting to derail the conversation to conclusively rectify the potential for confusion, offers the reference as a suggestion. She additionally marks the suggestion, usually by means of an upward intonational contour followed by brief pause, to allow the hearer an opportunity to pursue further clarification if such is needed. The try-marker is a text-book example of the preference in successful conversation for minimum effort over assured uptake. 

The initiation needn't be followed in the next utterance by the completion. The interlocutors may need a few rounds of discussion before mutual recognition is achieved. To carry this out, they engage in a back and forth that is marked to indicate that it is happening alongside the primary discussion. This *side-talk* remains isolated until any confusion is resolved; the result is then used to carry on the initial inquiry.

Because initiations do not serve as contributions on their own, the interlocutors must have a tool for bringing a contribution to a close. A *recognition symbol* can be a simple "uh-huh", "I see", or a nod. This is an interlocutor's way of signaling that recognition has been achieved and the contribution is ready to be added to the disourse model.

These collaborative tools in the domain of reference recognition (try-markers, side-talk, and recognition symbols) have analogues in the domain of speech acts as well. In fact, the idea that conversational moves can be understood partly in terms of the constraints they place on appopriate responses is widely accepted. Mats Rooth's alternative semantics theory of focus interpretation is motivated by the fact that felicity demands that answers be *congruent with* the questions that elicit them {% cite rooth1992 %}. Questions anticipate an answer, and restrict responses to those assertions that at least partially resolve the issue raised. The model of discourse developed by {% cite farkas2010 %} includes a slot fot the default response to an utterance contribution. Even assertion can be understood in part in terms of the appropriate response to it. It is common to distinguish between content that is *imposed* on the common ground versus content that is *proposed* as an addition {% cite murray2014 + anderbois2010 %}. As a proposal to update the common ground, assertion anticipates either acceptance or rejection on the part of the hearer, and (modulo repair tactics for failed presuppositions) it restricts responses to either acceptance or rejection of the content. 

## Conjecture and correction

It's thus natural to think of conversational moves as distributed contributions that are complete only when the interlocutors come to mutual agreement on how to adjust the information state. My contention is that when we view conversational moves in this way, conjecture can be seen to be a distinct move based on the contraints it puts on appropriate responses.

Offering a conjecture is an attempt to impose a restriction on the common ground in the absence of certainty that all conversational commitments are in place for the restriction. The conjecturer may not know that the content of their utterance is true, but it is more than just a haphazard guess. It is appropriate in a situation where the inquiry is stagnated and needs to be spurred along, even at the risk of moving it down a dead end path. The significance of conjecture in conversation highlights a preference for advancing the flow of inquiry over achieving certainty.

But this uncertain nature of conjecture means that it cannot serve to update the information state on its own. A conjecture must be vetted, and the canonical response to a conjecture is a move that provides this -- a {% gloss correction %}. Corrections can take many forms, but they normally involve two parts, a *denial* of some portion of the information previously put forward and a *substitution* for the denied information. The conjecture lays a rough foundation, and the correction builds upon it. Conjecture thus differs from assertion in that it calls out for a different form of response -- one that is more nuanced than merely acceptance or rejection.

I suggest that the dual speech acts of conjecture and correction together form a distributed contribution. That is, we do not represent the conjecturer and corrector as each providing indvidually complete and jointly cooperative contributions to the discourse. Instead, the conjecture/correction pair together contribute to the inquiry; the parts are individually inert. Discourse is different than wall building in that the nature of discourse processing requires all individual contributions to take place in serial fashion. It isn't possible for two interlocutors to contribute to a single discourse update simultaneously. However, they can contribute in tandem by delaying the impact of an update until after both individuals have contributed.


# Scoreboards and best systems

Let's begin by motivating it...

David Lewis' {% cite lewis1979f | noname %} suggestion that utterances in a conversation function as updates to values housed in the various slots of a conversational {% gloss scoreboard %} posits a logical platform on which the conversation is built. The scoreboard serves as a record of the contributions that have been made to the conversation, and it dictates both whether a new utterance is deemed to provide an acceptable contribution to the conversation and how acceptable utterances are to be interpreted. A crucial feature of the scoreboard is that it is not merely an unstructured list of information. Rather, the information is formatted in such a way as to maximize its robustness and simplicity as an interpretive tool.

As a first pass, we can think of the scoreboard as a field of slots and participants to the conversation as wielding a set of pegs. There is a many-to-one relationship between pegs and slots, but certain pegs can only fit in certain slots. The pegs represent the content of utterances viewed in relation to the specific issues the inquiry is out to resolve, while the slots are features of conversation generally, determined by the basic nature of inquiry.

Before we start filling out the conversational scoreboard with specific bells and pulleys, we face the question of what the posit of such a recording surface amounts to, and how this crucial interpretive device is instantiated. Lewis frames his preferred answer as such:

> Conversational score is, by definition, whatever the mental scoreboards say it is; but we refrain from trying to say just what the conversationalists' mental scoreboards are. We assume that some or other mental representations are present that play the role of a scoreboard, in the following sense: what they register depends on the history of the conversation in a way that score should according to the rules. The rules specifying the kinematics of score thereby specify the role of a scoreboard; the scoreboard is whatever best fits this role; and the score is whatever this scoreboard registers. {% cite lewis1979f | pages: p. 346 | noname %}

Under this characterization, determination of the conversational score, and the structure of the board on which it is represented is a project of *best system*-style theory determination:

> Whatever we may or may not ever come to know, there exist (as abstract objects) innumerable true deductive systems: deductively closed, axiomatizable sets of true sentences. Of these true deductive systems, some can be axiomatized more *simply* than others. Also, some of them have more *strength*, or *information content*, than others. The virtues of simplicity and strength tend to conflict. Simplicity without strength can be had from pure logic, strength without simplicity from (the deductive closure of) an almanac. Some deductive systems, of course, are neither simple nor strong. What we value in a deductive system is a properly balanced combination of simplicity and strength -- as much of both as truth and our way of balancing will permit. {% cite lewis1973a | pages: p. 73 %}

Theory choice amounts to selecting the top scorer among the empirically adequate alternatives judged against a set of constraints, principal among which are the criteria of *simplicity* and *strength* from the perspective of the theorizer.[^Bestsystem]

The motivation for this approach to scoreboards is brought out in the account of intentionality generally that Lewis gives in *Radical Interpretation* {% cite lewis1974b %}. For Lewis, the *goal* in theorizing about intentionality is to say how facts about speakers expressed in purely physical terms determine facts about the speakers' attitudes and the meanings of their utterances. The resources available to the theorist in this effort include the whole physical story, past and present, of a speaker's behavior as well as a *basic ideology* of intentional systems, which supplies the theorist with a store of *beliefs* and *desires* driving physically specifiable behavior and a collection of *truth conditions* to be associated with sentences, the principal meaningful elements of language.

The *methodology*[^method] for theory construction using these basic tools is to optimize the theory against a set of constraints specific to the domain of the intentional in addition to the general theoretical criteria. Lewis' prefered constraints stem from "the fundamental principles of our general theory of persons. They tell us how beliefs and desires and meanings are normally related to one another, to behavioral output, and to sensory input" {% cite lewis1974b | pages: p. 334 | noname %}.

The constraint that is of interest for us is the truthfulness constraint:
  
<!-- Constraints on a theory of meaning -->
{% def Truthfulness Constraint %}
{% assign constraints = site.data.definitions["constraints on a theory of meaning"] %}
  <span>{{ constraints["truthfulness"] }}</span></p>
{% enddef %}

This contraint stems from Lewis' work on convention...

### A collaborative extension to the basic ideology

There is no guarantee that a theoretical process carried out along these lines will result in a unique best theory of a speaker's intentional system; it may be that no single theory fits the constraints perfectly, and many may be equally distant from perfection. Additionally, truth conditions almost certainly provide an incomplete reductive base for sentence meaning. Lewis is well aware of these potential indeterminacies, but he wishes to hold his ground against the claim that there could be multiple distinct theories of meaning for a language, all of which perfectly meet the constraints:

> "*Credo*: if ever you prove to me that all the constraints we have yet found could permit two perfect solutions, differing otherwise than in the auxiliary apparatus of **M**, then you will have proved that we have not yet found all the constraints" {% cite lewis1974b | pages: p. 343 | noname %}.

The motivation for a collaborative discourse dynamics takes Lewis' model of linguistic theory, grounded in the best systems account and realized in the conversational scoreboard, as providing the appropriate groundwork. But I contest that we have, in Lewis' explicit proposal, the complete set of constraints to appropriately capture meaning in discourse. I don't base this challenge on a claim to have found multiple perfect theories of any speaker's intentional system based on Lewis' constraints. Rather, I do so on the basis of a claim that Lewis has not adnumbrated the complete basic ideology from which the constraints arise.

There is more to speech behavior than what it reveals about an individual's beliefs and desires. The patterns of interaction in discourse explored by Clark and his collaborators {% cite clark1992 | noname %} reveal that interlocutors are participants in an extended, distributed process of advancing the inquiry. If the basic ideology, and in turn the constraints, come from our common sense theory of persons, then our theory is incomplete to the extent that it ignores the fact that persons are *social* beings, whose attitudes develop over the course of many collaborative inquiries.

{% def Collaborative extension of the basic ideology %}
  {{ site.data.definitions["collaborative extension of the basic ideology"] }}
{% enddef %}

Our common sense theory of persons represents them as social creatures, and provides us with attitudes necessary to capture their collaborative efforts.[^collabattitudes] The collaborative extension forces us to reconsider how acceptance of these attitudes exerts itself within our constraints. It seems to me that at least two of the Lewisian constraints require modification in light of it: *generativity* and *truthfulness*.

## Truthfulness, honesty, and trust

Lewis envisions language use within a community as determined by a set of conventions {% cite lewis1975b | noname %}. In particular, he thinks that language use is governed by dual conventions of *truth* and *trust*, the first of which applies to speakers in the language community, the second to hearers. Speakers agree (and presume others also agree, etc.) to utter only truths to the extent they are able, and hearers agree to take on beliefs as their own in response to speakers' utterances.

But if discourse is collaborative, as displayed in the distributed contribution of conjecture and correction, then the truthfulness convention is incomplete as stated. Speakers cannot be counted on to utter only truths to the extent this is possible. In fact, the success of inquiry demands that they courageously utter what may well be falsehoods. What hearers can expect of their partners in conversation is that they put forward their contributions with *honesty*, uttering only what they take to provide genuine advancement of the inquiry in accordance with the specified plan.

The demands of honesty allow for uttering non-truths, but it still counts as a convention because it offers a solution to a coordination problem. Only in this case, the participants to the convention bring to bear, in addition to their understanding of the semantic content of utterances, the structure of the plan of inquiry recorded within the current conversational scoreboard. The convention is thus relativized to the inquiry at hand.

The collaborative extension also implies that lingusitic conventions cannot be easily factored on the basis of the role of a participant. It is not merely hearers who must rely on their interlocutors to properly advance the inquiry. Speakers, too, depend upon their interlocutors to provide checks on their speculative contributions. Thus, the contention of *trust* must be expanded to apply to speakers and hearers *mutually* -- hearers in taking on the attitudes required by the proposed advancement of the inquiry and speakers in speculating freely, trusting that hearer's will correct them to the extent they are able.

Language use in a community, I suggest, is governed by the dual conventions of *honesty* and *mutual trust*.

## Anaphora and coherence

(Jamesian striving, coherence, need for propositions, Lewis *ICC*)

To represent as rational is not just to represent as believing truths. For being rational is advancing the inquiry in suitable ways at suitable times, and advancing the inquiry is more than simply relating and accepting truths. Frequently, one advances the inquiry by taking up for consideration known falsehoods. (This is systematic, not an aberation to be swept under the rug.)

In *Index, Context, and Content*, Lewis suggests that the function of a grammar is to characterize a fair amount of our shared linguistic knowledge. But not all of it. There are elements of what we know about using our language in particular contexts that it doesn't deal with. Which ones? "Conversational appropriateness and implicature, disambiguation, taxonomy of speech acts, or what it is about us that makes some grammars rights and others wrong" {% cite lewis1980 | pages: p. 80 %}. And why not? Because grammar's key role is in imparting information. To do that, I need to say the right thing. The grammar supplies me with semantic values for sentences, which is how I determine what is the right thing to say. To impart information, all I need is that the semantic value get me the truth value of the sentence were I to say it in my current context. A convention of truthfulness and trust (not part of the grammar) will ensure that the message gets properly disambiguated and instilled with the appropriate force.

> The foremost thing we do with words is to impart information, and this is how we do it. Suppose (1) that you do not know whether *A* or *B* or ...; and (2) that I do know; and (3) that I want you to know; and (4) that no extraneous reasons much constrain my choice of words; and (5) that we both know that the conditions (1)-(5) obtain. Then I will be truthful and you will be trusing and thereby you will come to share my knowledge.

But this isn't *all* I want to do with words! I also want to use your knowledge to increase my own. And I want to help you bring up that knowledge even if it may not be at the tip of your mind. That is, I want to engage in an *inquiry* with words. The grammar can help me fulfill this desire as well, but it needs more support than the convention of truthfulness and trust can provide.

> Meaning in natural language manifests itself as the semantic competence of the language user, this competence is demonstrated in the interpretation and production of utterances, and language production and interpretation involve mental representations, which are derived from linguistic input in language interpretation and converted into linguistic output in language production. (Hamm, Kamp, van Lambalgan, pp. 5-6)

Hamm et al. suggest that the representational account of semantics is motivated by a *cognitive perspective* on semantic theory, in which the objective to to model the conceptual framework of language users that allows them to interact linguistically with the world.

> For someone who thinks of meaning along these lines it is tempting to see the formal properties of discourse contexts which DRT identifies as defining the interpretational possibilities for anaphoric pronouns as features of the mental representations which are constructed in the course of interpreting a text or piece of discourse; and this encourages a view of DRSs as models for mental representations, which capture some of the formal properties of those representations in addition to their truth conditional content.

Inquiry is an extended process. Carrying it out fruitfully requires us to maintain a record of what has transpired thus far in the inquiry. We can use this record to refer back to earlier discussion and connect bits of information into an extended web. Through a simple complication of the grammar, we greatly expand our information imparting capabilities. *Anaphora resolution* is one process that fits into an inquiry-extended picture of grammar. Natural language speakers have an ability to use explicit pronouns as well as implicit refering devices to link to previously introduced *discourse referents*. This ability is vital to the project of realizing inquiry in discourse. The grammar should help explain how it is done, but truth determination alone won't carry the load. Anaphora extends beyond linking individuals across sentence boundaries. The information web in a healthy inquiry has temporal ties between events {% cite partee1973 | pages: p. 602 %}:

{% ex Tense %}
  {{ "tense" | example: "sent" }}
{% endex %}

It's quite likely that there is a stove turning off somewhere in my past. But this fact means little to the interpretation of [Tense](#tense) if no such event occured within the time frame it gestures at.

The information web also ties states of affairs together via subordination relations between modalized sentences {% cite stone1999 | pages: p. 2 %}:

{% ex Modality %}
  {{ "modality" | example: "sent" }}
{% endex %}

Anaphora resolution is an important interpretive tool for connecting utterances, but it is not the only one. Language users are also able to suss out conceptual connections between bits of information. Discourses lacking such *coherence* connections can be very difficult, or even impossible to process {% cite kehler2000 %}:

{% ex Coherence %}
  {{ "coherence" | example: "sent" }}
{% endex %}

In virtue of its role in systematizing language users' shared knowledge about advancing an inquiry, a grammar for a language provides more than just the makings for truth determination.[^compositionality] It also provides the makings for anaphora and coherence relations. A *dynamic* grammar assigns anaphoric connections between sentences, and propositions can be anaphorically connected, as in modal subordination. A *collaborative* grammar assigns coherence connections between utterances.

To the extent that collaboration can be integrated into our constraints on language theorizing, we have reason to look for collaborative structure in the scoreboard representation of conversation. But what do collaborative score markers look like?

## Language as a best system

There are challenges to the best systems account in application to the governing principles of the physical structure of the world. Primary among these is its reliance on the notion of *simplicity*. Even if we grant as a methodological principle of scientific theorizing that simpler rules are to be preferred, there is no agreed upon criterion for relative simplicity that makes the decision procedure in any way objective. Lewis unabashedly relativized simplicity to the language within which the theorizing takes place, suggesting that simplicity be measured in terms of the length of the basic syntactic structures appearing in the laws. But as Nelson Goodman {% cite goodman1983 | noname %} has taught us, languages can vary drastically in syntactic specification of basic concepts, with no one language claiming pride of place over another. Unless one language can be separated from the rest, as Ted Sider {% cite sider2013 | noname %}, has argued is possible the best system account treats status as a law of nature as a dependent upon the theorizer's concept of elegance.

This modicum of *irrealism* inherent in the best system account is a second issue for its application in the realm of physical structure. It is well-accepted that there are limits to what is available empirically to human observers of the world, and some extreme empiricists go so far as to infer that there is nothing to posit beyond the empirically verifiable elements of our scientific models {% cite churchland1982 %}, but it is difficult to shake the idea that there is a physical reality out there that our theoretical efforts attempt to *describe* rather than *determine*.

Despite these concerns in the realm of the physical sciences, the best systems account fares well in application to *linguistic interpretation*.

# Collaborative update semantics

And now we provide the framework for a formal model...

Standard update semantics is build upon a system of sequential additions to and operations on a shared {% gloss discourse space %}. By supplementing this framework with a middle ground working space, a discourse {% gloss sandbox %}, we can represent interlocutors' joint contributions, decomposed into {% gloss initiation %} and {% gloss completion %} phases.

I consider accounting for conjecture to be an adequacy condition on semantic theory in that conjectures form a well-defined class of linguistic tools that do important interpretive work that cannot be done better by some other (set of) tool(s).

## Levels of dynamism

It is folly, Frege {% cite frege1884 | noname %} warned, to ask for the meaning of a word in isolation, prescribing instead that the sentence as a whole be the proper unit of semantic investigation. The dynamic turn in semantics did Frege's *context principle* one better. On the basis of anomolous linguistic data involving anaphora resolution, attention was shifted from single sentences to the broader linguistic context in which their specific instantiations appear. Thus it has been suggested that the proper units of linguistic evaluation are extended texts or conversations, what I refer to here as {% gloss discourses %}.

The many varieties of dynamic semantic accounts share in common a model of discourses in which there is exists a theoretical platform upon which information is built in a stepwise manner throughout the discourse. Each subsequent contribution to the discourse is analyzed in terms of what it constructs upon the platform or what previous construction it wipes away. The materials of which discourses are built include *possible worlds*, *situations*, *events*, *discourse referents*, and set-theoretic constructs thereof. This platform and its associated construction go variously by names such as *discourse representation*, *conversational scoreboard*, *common ground*, and *information state*. I couch my discussion within this broad tradition of theories and refer to the semantic representation variously as the *information state* or *state of information* of the discourse.

These semantic theories are dynamic in that they describe how new contributions to a discourse *respond to* and *modify* what has preceded, and discourse is very much dynamic in this sense. But by and large, they fail to capture another way in which discourse is dynamic. Contributions to discourse also *anticipate* what is to follow in the discussion, and this feature of how discourses proceed ought to be brought under the umbrella of semantic theory.

## Initiations, defaults, and sandboxes

To capture this anticipatory level of dynamics, I propose that we treat individual utterances as together forming a single evaluable contribution. We can model this idea by incorporating another Fregean insight into update semantics, treating the initiation phase of discourse contributions as *incomplete*, with the completion phase *saturating* it with the requisite informational material. It is only once saturated that the discourse content of an utterance is brought to light. However, initiations will ocasionally be treated on their own for purposes of evaluation. While I contend that instances where this is done are limited to non-canonical contexts such as presuppostion repair, it isn't strictly true that initations are *inevaluable* without a complementary completion. For this reason, we must also incorporate a notion of {% gloss default %} {% gloss saturation %}, in which context supplies the material needed for evaluation of the initiation. Defaults turn an initiation into a complete contribution, but they are also subject to override by a standard completion presented by a discourse participant.

The resulting picture is one of an extended and evolving, collaborative process surrounding each contribution to discourse. Initiations undergo a vetting procedure before they are entered into the official conversational record. To avoid contamination of the common ground with the untreated mess that many initiations carry, interlocutors must isolate the collaborative process from the conversational space. For this purpose, I draw the notion of a *sandbox* from the field of computer programming. A sandbox is platform cordoned off within a system where untested code can be executed and debugged under real conditions but without infecting the system as a whole if things go wrong. If the executed code is found to be functional, the restrictions can be lifted and it can be incorporated into the system. By introducing a sandbox-style working space within the conversational space as a whole, we can incorporate collaboration into standard update semantics.

The system of initiations, defaults, and completions, encompassed within a sandbox operating theater, provides our update semantics with a new type of dynamism. Standard dynamic accounts have it that utterance meaning depends on the surrounding linguistic context. But in collaborative update semantics, utterance meaning can actually change as the conversation progresses, and the status of an utterance evolves from initiation saturated with a default, through the sandbox vetting, and into the conversational record as a completed contribution.


