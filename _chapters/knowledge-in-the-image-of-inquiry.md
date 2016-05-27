---
title: Knowledge in the image of inquiry
date: 2015-10-08
level: 2
type: chapter
layout: chapter
abstract:
  It is commonly held that knowledge is the end of inquiry, but if we take this connection seriously, there are significant implications for our understanding of the nature of knowledge. I propose to take at face value the idea that knowledge is whatever we get as output in the process of inquiry. Delving into the nature of inquiry reveals that it is a <em>collaborative</em> endeavor, and so, then is knowledge. This idea has important consequences for explaining the distinctive value of knowledge over true belief and for the contextualism/relativism debate in epistemology.
toc: yes
extra:
  - Levi on goal generated constraints
  - Bratman et. al on plans
  - Peirce and van Fraassen on induction
---

## Knowledge as the end of inquiry

Inquiry is a process whereby individuals form, revise, and otherwise manipulate their mental states.[^inquiryStalnaker] This is a goal-directed enterprise; both the impetus for engaging in inquiry and the procedure of doing so are understood in terms of their contribution to the achievement of some end.

It is tempting to maintain that the {% include appendices/word.html word='end of inquiry' %} is truth. While possession of the truth may be what the inquirer is after, she wishes to possess it in such a way that she both *recognizes* and *accepts* it as the truth. The goal of engaging in inquiry is thus to achieve a specific, *cognitive* state with true propositions as its content.

C.S. Peirce and others following in his wake {% include appendices/ref.html id="levi1980" o="n" e="," %} have suggested that so strong a cognitive tie to truth is too lofty a goal. They emphasize that assurance of truth is beyond our ken and that the most we can genuinely hope for at the end of inquiry is the *settlement of opinion*, for:

> "it is clear that nothing out of the sphere of our knowlege can be our object, for nothing which does not affect the mind can be the motive for mental effort. The most that can be maintained is, that we seek for a belief that we shall *think* to be true. But we think each one of our beliefs to be true, and indeed, it is mere tautology to say so." {% include appendices/ref.html id="peirce1877" o="n" e="" p="11" %}

It is possible to take the pragmatist bait and insist that truth is still the end of inquiry by accepting that whatever is output from the process of inquiry *just is* truth. More conservatively, we can cleave to a correspondence account of truth while maintaining that the final aim of inquiry involves {% include appendices/word.html word='wide content' %} by delimiting a natural, restricted category of *proper* inquiry that can be reliably expected to produce true propositions. We then shift our focus to characterizing the nature of *proper inquiry*.

Proper inquiry is a rule governed process. Rule-following has the practical advantage of improving the reliability of the inquiry, but this is merely the icing. The principal connection to rule following is a conceptual one. The cognitive state that the inquirer seeks is a *praiseworthy* one, and one does not garner praise simply by stumbling onto true propositions. Undertaking the process of inquiry is important to earning the accolades that come with possessing the truth.

The end of proper inquiry, then, is a (i) praseworthy, (ii) cognitive state with (iii) true propositions as its content. Only slightly tendentiously, proper inquiry is a process that reliably produces justified, true belief. Modulo Gettier-type complications, the end of proper inquiry is *knowledge*.

The *knowledge rule of assertion* is the proposal that it is a constitutive norm of assertion that one only assert what one knows. Jonathan Schaffer {% include appendices/ref.html id="schaffer2008" o="" %} asks what comes of knowledge when we take the knowledge rule of assertion seriously. His answer is that, since assertion is best seen as taking place within a discourse context structured by the question under discussion {% include appendices/ref.html id="roberts1996" o="n" e="," %} and the *QUD* is best represented by the set of its alternative answers {% include appendices/ref.html id="groenendijk1984" o="n" e="," %} knowledge is similarly relativized to a set of alternatives to the proposition known. And this makes knowledge look a lot like Schaffer's {% include appendices/ref.html id="schaffer2005" o="" %} contrastivist proposal would have it.

This proposal to limn the structure of knowledge by investigating the structure of assertion is motivated by the suggested connection between knowledge and assertion. As Timothy Williamson puts the idea, "it is pointless to ask why the knowledge rule is the rule of assertion. It could not have been otherwise" {% include appendices/ref.html id="williamson2000" o="" p="267" e="." %} Knowledge is strongly modally tied to assertion, and modal connections generally bring structural similarity in their wake. Of course, structural similarity is a symmetric relation, and it is feasible to adjust our conception of the structure of assertion to match a particular account of knowledge. But with a well developed theory of assertion in the offing, it is reasonable to let it inform our conception of knowledge.

Similarly, knowledge and inquiry are not merely incidentally connected. Inquiry is designed with a specific eye toward producing knowledge. Even stronger, it is natural to *define* inquiry operationally as any process whose output is, *ceteris paribus*, knowledge. Properly conducted inquiry results in knowledge properly conceived. If we take this idea seriously, then the structure of knowledge ought to mirror the structure of the outputs of inquiry.[^connection]

*Inquiry* and *knowledge* are both opaque, high level concepts and structural similarlity is a symmetric relation. If we had a solid understanding of the nature of knowledge, we could use the *end of* connection to extend our understanding of inquiry as well. But opinion on the nature of knowledge is not nearly settled. I propose to take at face value the idea that the outputs of the process of inquiry are knowledge and, thereby, to provide insight into the structure of the knowledge relation. Call this the *inquiry-first* conception of knowledge.

Inquiry, as we'll see ([Sect. 2](#the-nature-of-inquiry)), has a structure that evokes its deeply collaborative nature. In light of the proposed connection, we have reason to represent the knowledge relation as similarly collaborative. In one sense, this idea is quite radical, in that it seems to eliminate the potential for solipsitic knowledge, and that it complicates the relationship between facts and the things that are known. But we can perhaps buff a few of the burrs off this conceptual edge ([Sect. 3](#knowledge-and-knowing)), and the proposal garners support from the puzzles it can help to solve.

Possessing knowledge is uncontroversially more valuable than possessing merely true belief, but the basis of this judgement is more elusive. The inquiry-first conception of knowledge offers a solution to the value of knowledge question ([Sect 4](#the-value-of-knowledge)).

Intuitions about whether two discourse participants disagree with eachother have been brought forward as evidence for particular semantic theories, but the value of this evidence remains under-developed. The inquiry-first conception of knowledge provides a grounding for linguistic intuitions about disagreement and speaks in favor of *relativism* as the semantic theory that best captures those intuitions ([Sect. 5](#contextualism-and-relativism)).

## The nature of inquiry

Peirce conceived of inquiry as divided into three stages: deduction, induction, and abduction. His classification was based on what he took to be the distinctive role, or *mode of reasoning*, that each  plays in the process of increasing scientific knowledge. Our investigation of the nature of inquiry takes us through each of these phases, emphasizing how the function of each phase is represented in the basic structure of proper inquiry. Our characterization of each phase will differ from Peirce's conception, instilling insights from a variety of perspectives on the process of inquiry.

### Deduction

Let us start with epistemic logic, which explicitly embraces the connection between knowledge and inquiry. From the standpoint of epistemic logic, inquiry both begins and ends in knowledge. To engage in the process of inquiry is to perform an operation on an information state, *K*, representing an agent's state of knowledge at a time. Information states can be represented syntactically as a deductively closed set of interpreted sentences of some language, **L**. We can equivalently represent them semantically by assuming a domain, **W**, of points, each of which represents a maximal, consistent set of sentences of **L**. We then render each *K* as an equivalence class of such points relative to the agent's knowledge. In this way, an agent's information state at a time is a set of possible worlds amongst which their knowledge does not decide. Individual sentences carry propositional content, which is itself the maximal set of possible worlds that make the sentence true.

Isaac Levi {% include appendices/ref.html id="levi1980" o="" e="" %} advocates an account of knowledge based on the epistemic logic view of inquiry. Levi's proposal is a radical departure from the standard *justified, true, belief* account of knowledge. He suggests that "from X's point of view at *t*, there is no difference between what he fully believes at *t* and what he knows at *t*" {% include appendices/ref.html id="levi1980" o="" p="28" e="." %} This view excises truth as a component of knowledge for the same reasons that Peirce expounded above; information states are fully internal objects, insensitive to whether they link to the outside world. Justification is similarly eliminated on the basis that information states are the inputs to inquiry and such states do not carry their historical provenance with them.

Levi's is a *conservatist* view. Justification is not a matter of *pedigree* (the origins or first principles of an information state's genesis), it is a matter of *improvement*. Agents needn't be able to justify the composition of their information state, only the changes they make to it. Thus, justification comes into play only in comparison of information states; a transition from one state to another, a *revision*, is justified in so far as the latter state is in some way better than the former. That is, there are norms for the *process* of proper inquiry. For Levi, the criterion for appropriate revision is care taken against importing error into one's belief corpus {% include appendices/ref.html id="levi1980" o="" p="71" e="." %}

Given the structure of information states as Levi understands them, all revisions are represented by set theoretic operations, principally set intersection and union. From the semantic perspective, intersection of an information state with the propositional content of a sentence represents an *expansion* of one's knowledge; acquiring information involves eliminating worlds from one's consideration as genuine possibilities. Set union represents *contraction*; withdrawing belief and thereby becoming uncertain about some proposition involves adding worlds to one's set of considered possibilities. According to Levi, and what has become known as the *Levi Identity*, all revisions are reducible to some combination of *expansion* and *contraction*.

<!-- Levi identity -->
{% assign leviidentity = site.data.definitions["levi identity"] %}
{% include examples/def.html type="def" term="Levi Identity" defn=leviidentity %}

The problem of justification is thus reduced to the problem of specifying properties of expansion and contraction operators such that all warranted changes in belief are subsumed under their operation. This captures the deductive phase of inquiry. Given as input a proposition with which an information state is to be revised, there is a set of rules specifying exactly how the revision ramifies through the information state.

### Abduction

On Levi's conception of information states, each state is as valuable as any other, and there is no inherent impetus to revise out of a state one finds onesself in. That's true so long as one avoids falling into the trivial state, in which deductive closure forces an expansion of the information state to include **W**, a state referred to as *epistemic hell*. As long as one avoids epistemic hell, the specification of inquiry in terms of a revision operator defined over information states tells us nothing about when one ought to revise.

If one never revises, one never risks importing error. Levi's rational inquirer can be content to maintain a static belief state, for he knows the only potential criticism comes when he decides to revise. Of course, revision may be forced upon him by quotidian interaction with the world. One's belief state is constantly updated involuntarily by way of one's perceptual input. These updates require maintenance using the same principles of revision. But there is no mechanism, in Levi's system, for initiating inquiry. In the epistemic logic framework, the presentation of a proposition as input to the revision of an information state is an non-rational process.

Peirce recognized that no human agent will be content to stand pat with their knowledge. "The iritation of doubt causes a struggle to attain a state of belief," and this iritation is "the only immediate motive for the struggle to attain belief" {% include appendices/ref.html id="peirce1877" o="" p="10" e="." %} While such iritation is a natural state for human inquirers, our current framework has no means of accounting for the conditions under which a rational agent chooses to scratch.

William James {% include appendices/ref.html id="james1896" o="" %} carried this idea further, drawing a distinction between two independent and sometimes conflicting goals for those engaged in the pursuit of knowledge. One is, as Levi suggests, to avoid believing falsehoods, but another, equally important one, is to acquire true beliefs.  A clever agent could meet the goal of avoiding falsehoods by simply believing nothing at all, but they would thereby forfeit the virtue of believing truths. One could, alternatively, meet the goal of believing truths simply by believing everything, but doing so sacrifices entirely achieving the second goal. As James saw it, a strategy of inquiry that floats between these extremes is the path we ought to search for. This suggests that the need for revision is not merely an incidental consequence of our inquisitive minds. It is, instead, an ocassional mandate of proper inquiry that the agent *strive* to believe truths, even if doing so risks importing error.

James famously argued that if one's belief choice is *live*, *momentous*, and *forced*, then the will to believe rationally outstrips the fear of being wrong. But as a set of necessary requirements, this restricts speculative endeavors too much. Inquiry need not be momentous or forced for jumping to a conclusion to be epistemically fruitful. Mere time-sensitivity may be enough. Inquiry is a process that is undertaken by fallible individuals in real time. Such agents have limited access to information and limited resources to dedicate to the process of inquiry. Frequently, action is required before certainty can be obtained. And on many quotidian decision points, the risk of being incorrect is fairly low. It is *because* not every inquiry is momentous that striving for truth (and risking falsehood) is sometimes to be prefered. Let us call this extended conception of the rational development of inquiry the *Jamesian amendment*.

<!-- Jamesian amendment -->
{% assign jamesianamendment = site.data.definitions["jamesian amendment"] %}
{% include examples/def.html type="def" term="Jamesian amendment" defn=jamesianamendment %}

The Jamesian amendment makes inquiry an optimization task between taking on too many falsehoods and leaving out too many truths. To accommodate this idea, we need to expand our structural representation of inquiry. The information state model from epistemic logic can account for the error-avoidance goal. But we need a way of representing two elements entailed by the goal of acquiring truth. The first is the *impetus to revise* -- information state structure that captures an inquirer's motivation to strive for knowledge. The second is the *will to believe* -- an account of acceptance of a belief in the absence of certainty in its truth, and an explanation of how this maneuver can be rationally viable.[^informationpotential]

#### Impetus to revise

To have a call for revision of one's information state is to recognize an inadequacy therein. Inadequacies can be of the sort in which an agent *knows too much*, in the sense that their information state is contradictory and thereby contains too much information.[^knowtoomuch] The means of rectifying this sort of inadequacy is accommodated on the Levi model, in the form of conditions on contraction. While all information states are, for Levi, equal in terms of adequacy, we can set the trivial state aside as the one state that always demands revision, and in particular, revision by contraction out of epistemic hell.

Inadequacies can also arise when one acknowledges that they *know too little*, in the sense that there is an issue that is not settled by their state of information. This sort of inadequacy is not to be accommodated in Levi's model. As defined so far, information states are nothing more than their members, and each state (potentially) contains infinitely many points. Aside from the situation in which one state strictly contains another, there is no way of saying that one state is more informative than another.[^contain] (Read further: <a class="pop" id="levi-on-goal-generated-constraints">Levi on goal generated constraints</a>)

Recognition of information state incompleteness is a principal impetus to revise. For a state to represent itself as containing unsettled issues, we need to add structure to the information state. To have an unsettled issue is to have a non-uniformity across the information state with respect to a particular subject matter; certain points represent one resolution of the subject matter, other points a different resolution. Recognition of a non-uniform pattern holding across an information state can be modeled formally by means of a relation *R* defined over the membership of the information state, such that for any two elements of the state, *x* and *y*, *R(x,y)* just in case *x* and *y* agree on the subject matter of *R*. The effect is a partitioning of the information state into equivalence classes with respect to the issue that the agent's information state is unable to settle. The result is an information state that calls for revision, in particular, expansion by elimination of complete cells in the partition.

#### Will to believe

As it currently stands, our model of inquiry allows for propositions to be incorporated into information states in two ways. They can be consequences of evidence the agent acquires through their observational faculties, or they can be entailed by other propositions that are themselves consequences of such evidence. It follows from the Jamesian amendment that a rational inquirer may, at times, be warranted in taking on belief that is not conclusively established by either of these means. But we could easily incorporate this mandate, without modifying the structure of inquiry at all, by loosening the requirement for when a proposition counts as a consequence of an agent's evidence. The most natural constraint involves restricting our evidence to direct observation, but there is nothing in principle from incorporating propositions that merely have the *balance of reasons* tilted in their favor.

The problem with this proposal is the threat it poses to the first epistemic goal of error-avoidance. Once a belief is incorporated into an information state, it can be difficult to excise. And as more beliefs become incorporated, tracing the countours of their relative entrenchment becomes exceedingly tedious. It is granted that the will to believe carries a risk of being wrong. Information states must be insured against this risk, and simply reducing entry requirements for membership in the information state does not provide any assurance.

Additionally, we can here grant Levi's point that there does seem to be a difference between the two cognitive goals. It isn't a difference in significance to the inquiry, but it does provide us with reason to represent differently the incorporation of propositions stemming from the two goals.

James' characterization of the motivation for the will to believe emphasizes that it is the *choice* that is genuine and calls for resolution. The essence of the genuine choice is that no particular resolution of the uncertainty demands selection, but still a selection must be made. We can capture this feature of proposition integration via the will to believe by focusing on the selected proposition's position within the partition we introduced to capture the impetus to revise. The will to believe is nothing more than selecting a prefered resolution of a recognized incompleteness in one's information state. Formally, this amendment requires only that the relation *R* that represents the partition impose an *order* on the members of the state. The result is an information state that both calls for revision and selects a preferred means of doing so. And it does so while insulating the information state from the risk the revision carries.

This extension of inquiry based on the Jamesian amendment is intended to capture the abductive phase of inquiry. The two parts of the extension happen to map onto a commonly cited distinction within the abductive phase {% include appendices/ref.html id="campos2011,shanahan1986" o="n" e="." %} *Creative abduction* is associated with the scientific context of discovery. It is involved when an inquirer recognizes a scientifically fruitful question and develops a set of hypotheses that serve as potential answers to that question. Incompleteness, modeled as a partition on an information state, represents the output of creative abduction. The extension does not provide us, specifically, with an account of the conditions under which an agent comes to represent its own incompleteness. And this is all to the good, for creative abduction is notoriously unamenable to logical characterization. We don't have, nor do we want, a topic-neutral story of revision into incompleteness. But the extension does provide a uniform representation of what a state that *calls for* revision looks like.

The second part captures the value of *striving* for truth, which closely resembles the *selective* phase of abduction, in which the scientist chooses from amongst the set of viable hypotheses the one that best answers the question on the basis of a set of criteria that perhaps don't eliminate all other answers completely. This is the mode of reasoning known as *inference to the best explanation*. James' proposal was that, ocassionally, elimination of incompleteness is rationally preferred to remaining ambivalent even at the risk of being wrong.

Modeling inquiry in this way thus makes it part of the domain of logic to specify the conditions under which selective abduction is warranted. What makes it the case, for a particular incomplete information state, that it is epistemically appropriate to complete it at the risk importing error?

For the deductive phase, the motivation for the structural posit was the error-avoidance goal of proper inquiry. The justification for the specific properties of the revision operator is done piece meal by way of a demonstration that each rule of expansion or contraction preserves truth, and thus avoids error.

But the motivation for the structural posits necessary to incorporate the abductive phase construed as above changes the game entirely. Demonstration is not the proper method of justification for a solution to an optimization problem. In its place, we want two things: (i) assurance that each criterion optimized over is secured to a high degree, and (ii) insurance that success on each criterion is insulated against success on the others. As applied to the Jamesian amendment, the first condition is met by reliability testing on the outputs of the selective abductive phase. To the extent that the inquirer tends to settle on true hypotheses, her process of inquiry is well calibrated. The second condition requires that the goal of truth acquisition does not radically undermine the goal of error avoidance. To meet this, our account of inquiry must incorporate protective insurance against the wanton incorporation of error in the course of the abductive phase. This, I contend, is provided by corrective mechanisms inherent in proper inquiry, mechanisms residing in the jurisdiction of the *inductive* phase of inquiry.

### Induction

Induction is normally understood in Peirce's tripartite distinction as (i) an ampliative mode of reasoning that (ii) provides its user with the *security* that its outputs are for the most part true. For familiar, Humean reasons, there is no mode of reasoning that simultaneously meets both of these criteria.

Bas van Fraassen {% include appendices/ref.html id="vanfraassen2000" e="," %} accepting that an epistemology based on the search for a secure, ampliative inference is bound to come up empty, proposes an alternative conception of the pursuit of science:

> Given that traditional epistemology embodies false hopes never to be satisfied, we must try to find a different view of our epistemic condition, with new hopes and new dreams of its own. So here is our tragic protagonist, thrown into a world she never made, and she asks us: What does it take?
>
> We answer her: it takes luck, courage, and technique; but the greatest of these is luck. {% include appendices/ref.html id="vanfraassen2000" e="," p="273" %}

Technique is nothing other than logic. It's operation is embodied in our deductive element of inquiry.[^conditionalization] Courage is the ability to face the prospect of error and strive for truth regardless. It is acknowledgement of the necessity of going beyond what technique can provide if skepticism is to be avoided. It is incorporated as an aspect of inquiry by way of the abductive element outlined above. But technique and courage are epistemically idle without luck -- the mere fortune of finding ourselves in a world that cooperates with our quest for knowledge.

Luck, while vital, is not necessarily blind, and we needn't despair of ever convincing ourselves that it is on our side. We can't, perhaps, force the hand of fate, but we can recognize when we're getting a helpful nudge, and make use of her kindness while it remains. As van Fraassen points out, the lucky are simply those who find themselves with qualities amenable to the whims of their environment.

> If our pursuit of knowledge, however broadly or feebly construed, is to be successful, we must be lucky -- we have no way to constrain such fortune. This is the verdict on modern philosophy's misguided search for security. The history of Earth has seen great disasters that spelled the extinction of almost all life, including the dominant, best adapted among species. In each case, some forms of life happened to be suited to the radically and suddenly transformed circumstances -- thus evolution on Earth continued after all. See who was lucky and who was not! Look to those survivors, they weave not; neither do they spin; but fortune smiles on them. {% include appendices/ref.html id="vanfraassen2000" e="," p="273" %}

The fortune of the human inquirer is that she is not alone in her endeavor. She finds herself in a community of similarly inquisitive individuals. She certainly didn't have to be so lucky to have others with whom to engage in inquiry, but given that she does have them, she can acknowledge their vitalness to the endeavor and make use of their assistance in providing a safety harness for her courageous leaps. (Read further: <a class="pop" id="peirce-and-van-fraassen-on-induction">Peirce and van Fraassen on induction</a>)

The proposal, then, is that induction is a process of scientific testing.[^peircetesting] It necessarily follows abduction and provides a corrective to its flights of fancy. Inquiry is so positioned to incorporate this insurance against error because it is a *coherent* and *corrective* process. Humans must consider themselves lucky to have acquired the capability to engage in this process, but we are no less warranted in practicing it for its origins.

#### Coherence

Considering just the deductive component of our model of inquiry, we could treat the process of inquiry as a binary relation between states of information. Deduction starts with an information state, takes a bit of information, and outputs a new information state. Once this revision takes place, all information about the genesis of the bit of information that spurred the revision is lost. All sentences in an information state have the same infallible status. It is as if the information state was formed from whole cloth.

But once we open the door to incorporating the goal of truth acquisition into our representation of inquiry, we see inquiry as a *dilated process*. Inter-revision states are not complete states of knowledge. Instead, they are way stations on the road to knowledge. Viewing inquiry as a dilated process provides us with additional properties by which to evaluate the quality of inquiries. Proper inquiry, as a dilated process, involves *coherence* among its contributions. Part of that coherence is that contributions to the inquiry respond appropriately to prior contributions, where appropriateness is judged in terms of the contribution's capacity for bringing us to the end of inquiry.

An important mechanism of coherence is the build-and-test update procedure that inquiry exhibits. Inquiries are cummulatively built in a step by step process. A contribution to the inquiry adds a proposal to an inquiry workspace, making it available to be played around with by subsequent contributions to the inquiry before being ultimately accepted or rejected.

Evaluation of the coherence of a contribution to a dilated process is relative to a system of structural constraints -- a *plan* -- for the process. The primary function of a plan is to restrict the set of possibilities from amongst which those engaged in the process select their moves. This imposed restriction allows plans to be followed, in real time, by cognitively limited agents. But plans are also to be carried out in real space, which does not always evolve the way planning agents hope or expect. Too rigid a restriction on possible moves will bind the agents to failure. Thus, plans must allow for modification in the face of unexpected developments in the environment within which the process takes place. (Read further: <a class="pop" id="bratman-et-al-on-plans">Bratman et. al on plans</a>)

Proper inquiry is no different. A plan of inquiry imposes *coherence* constraints on contributions to the inquiry. Future additions must follow the general course set by previous contributions. But, nature can so conspire to turn certain conjectures into dead ends, and a healthy plan of inquiry will accommodate mechanisms to adjust the plan on the fly.

Incorporating coherence evalutations into inquiry requires an adjustment of its basic strcuture. We must see contributions to inquiry as *interleaved* in a way that contributions can either be natural responses to previous contributions, or fail to be.[^interleaved]

#### Correction

Coherence is needed to make sense of the evolution of inquiry, but *security* in this evolution comes from a specific kind of coherence -- *corrective coherence*. Induction as a corrective on abduction requires a special kind of contribution. The procedure is something that a solitary inquirer can take on themselves, but its value is most evident in the context of joint inquiry.

The primary role of joint inquiry is to expedite what would be an extremely tedious task if attempted alone. The truth acquisition goal of inquiry, modeled within the abductive phase, can be viewed as an efficiency mechanism. Judicious speculation can be a shortcut in the difficult trek through a vast intellectual terrain. Joint inquiry provides extra motivation for assuming the risk such shortcuts involve in virtue of its *collaborative* nature. The collaborative interlocutor, to the extent she is able, will pull you back from the ledge by voicing her *disagreement* with more questionable speculation. Disagreement is the tool by which interlocutors check each other's flights of fancy. It is a tool that rational inquirers both know how to wield and are prepared to let others weild against them.

The success of this procedure depends heavily on a shared understanding of each party's role in the inquiry. An individual can only feel comfortable in proposing a speculative addition to the common ground if they believe that their collaborators will correct their contribution to the best of their ability.  And this requires interlocutors to be more than passive recipients of information.  They must use openings in the conversation to interject disapproval or uncertainty in addition to registering understanding and acceptance of what has been presented.

But disagreement is not merely a handy tool that incidentally finds a use in joint inquiry. It is a crucial feature of inquiry as a process that outputs knowledge. In proper inquiry, it is not enough that the participants in the inquiry come to accept truths about the world. The *process* of inquiry, when faithfully undertaken, serves to provide its participants with justification for coming to accept the outputs of the process. Having gone through the inquiry is necessary for the right to believe its outputs. And facing up to protestations of one's interlocutors is an important element of this process.

The centrality of disagreement to inquiry can be brought out by considering the observation that, since proper inquiry has knowledge as its end, those who have adequately undertaken the process of inquiry are justified in the attitudes they hold in virtue of so undertaking. In his famous defense of liberty, John Stuart Mill {% include appendices/ref.html id="mill1859" o="" %} contends that facing unrestricted dissent is essential to being warranted in holding any opion.

> Complete liberty of contradicting and disproving our opinion, is the very condition which justifies us in assuming its truth for purposes of action; and on no other terms can a being with human faculties have any rational assurance of being right. (II, 6)

Expanding Mill's idea slightly to allow for the possibility of disagreement in attitudes other than belief, we derive a constraint on justified possession of attitudes arising from inquiry.

<!-- Millian constraint -->
{% assign millianconstraint = site.data.definitions["millian constraint"] %}
{% include examples/def.html type="def" term="Millian Constraint" defn=millianconstraint %}

One virtue of the freedom of expression, brought out in Mill's reference to one's "rational assurage of being right" in the quote above, is a practical one. Given that human inquirer's strive for truth, and that we are subject to the limitations and biases of our unique cognitive histories, letting a thousand ideas bloom in the court of public inquiry makes it more likely that public opinion comes to settle upon the truth. But Mill carries the idea further, maintaining that one's justification for an attitude depends on dissent even were we to grant that the attitude is apt.

> However unwillingly a person who has a strong opinion may admit the possibility that his opinion may be false, he ought to be moved by the consideration that however true it may be, if it is not fully, frequently, and fearlessly discussed, it will be held as a dead dogma, not a living truth.
>
> ...assuming that the true opinion abides in the mind, but abides as a prejudice, a belief independent of, and proof against, argument—this is not the way in which truth ought to be held by a rational being. This is not knowing the truth. Truth, thus held, is but one superstition the more, accidentally clinging to the words which enunciate a truth. (II, 21-2)

Even in the face of certainty regarding the answer to certain questions, dispute plays an important role in sustaining individual community members' right to believe the accepted truth. This makes one's right to an attitude conceptually, and not merely practically, dependent upon the inquirers with whom one interacts. And this dependence generates commitments for all parties to an inquiry. One would fail to have carried out the process of proper inquiry were he unable to respond to challenges that arise throughout the inquiry. But he would equally be unjustified if no challenges were to arise at all. Not only are we, as initiators of an inquiry, expected to be able to provide reasons for the propositions we propose, others, as participants in the joint inquiry, are expected to challenge contributions whose content runs afoul of either their own expectations or the course of the inquiry so far.

A corrective contribution to inquiry demands a special kind of coherence. It involves a modification of a previous contribution by extracting the offending material from the inquiry representation and replacing it with an alternative proposal. This is different from the ordinary contraction of an information state in the deductive phase of inquiry, for correction may cut more finely than removal of entire propositions. Correction can pertain to all contents of the inquiry representation.[^downdate] To the extent that free disagreement is essential to proper inquiry, the inquiry structure we posit must be able to accommodate such corrective contributions.

The combination of coherence and correction exhibited by joint inquiry makes it a *collaborative* process. Joint inquiry is valuable not only because individuals can make use of each other to acquire true beliefs about the world. Earning the right to those beliefs requires individuals to work together, and it foists commitments upon each party: speakers must be ready to defend their claims and their audience must be prepared to correct such claims when they can.

### Implementation

As explored above, inquiry is a logical process that is independent of its means of implementation. But inquiry is also a process that humans carry out in real time, and the means by which they carry it out can place further constraints on its nature. One important implementation of joint inquiry is *discourse*, which involves multiple people contributing to the inquiry by way of linguistic utterances. The collaborative nature of inquiry requires multiple parties working in concert, not just serially. But contributions to discourse are essentially serial.[^talkingover] The result is that viable implementation of inquiry in discourse requires an ability to track the changes contributions impose on the inquiry representation. That is, the fact that inquiry is implemented in discourse calls for an element of the inquiry structure that represents a *revision history* of the inquiry.

This completes our survey of the structure of inquiry. Inquiry is a complex process, and any representation thereof must capture this complexity. The table below outlines the various proposed additions to the structure of inquiry.

<!-- Types of value -->
{% capture struci %}
{% include appendices/typology.html distinction="structure of inquiry" biblio="no" %}
{% endcapture %}
{% include examples/def.html type="table" term="Structure of inquiry typology" defn=struci %}

## Knowledge and knowing (What do we know?)

Return to the idea that knowledge is whatever the outputs of proper inquiry are, and call the result the *inquiry-first* account of knowledge. In light of our survey above, the object of knowledge is a collaboratively developed structure composed of (at least) a possibility space, a set of relations over that space, and a record of the process by which the issue has been resolved. This is a fairly substantial departure from the standard view of knowledge on which it is a relation that holds between an individual and a proposition. But substantial doesn't mean radical, and the proposal is not as divorced from common sense as it may at first seem.

### Solitary knowing

If one does not belong to a community of inquirers, then the notion of defending one's contributions makes little practical sense. Still, the hermit and non-social animals possess knowledge; the *Collective criticism condition* threatens to cut too deeply. Despite this initial worry, the inquiry-first account has no difficulty accounting for solitary knowledge.

First, the account requires only that the knower possess the *ability* to defend her beliefs, whether or not they have come under actual threat.[^ability] The hermit can be capable of defending his beliefs were anyone to venture into his hollow, and non-social animals may possess the concepts required by the inquiry-first account though they lack the tools to express them verbally.

Second, the account commits the knower only to defending belief against the *best available* arguments, and in degenerative cases, these arguments may not be all that good. It follows from this qualification that knowledge is relativized to external factors such as the existence of an engaged community poised to challenge belief. Externalization of the conditions required for knowledge is significant, but not unmotivated. Consider the classic cases of external defeaters in the post-Gettier epistemology literature. Gilbert Harman's *library detective* case will do {% include appendices/ref.html id="harman1973" o="n" e=":" %}[^goldman]

> In front of the library detective, Tom takes a library book from the shelf and hides it in his coat. He then walks out of the library without renting it and brazenly flaunts it outside. The library detective sees all of this and reports it to the police. The library detective is confident that it is Tom who stole the book.
>
> Later, Tom's mother testifies that Tom has a twin brother who has a naughty streak, and Tom could not have taken the book because he is actually thousands of miles away. The library detective does not hear this testimony. Tom's mother is lying, and it was Tom who took the book.

Spurious as it is, the testimony having been made is intuitively enough to defeat the library detective's knowledge. The fact that this defeater is unavailable to the library detective is of no consequence to his knowledge. The *Collective criticism condition* captures this intuition by building the record of challenges addressed into the object of knowledge. Until the library detective is accorded an opportunity to defend his charge against Tom's mother's rebuttal, his inquiry is incomplete, and knowledge eludes him.

Similar remarks can be made on behalf of the knowledge of non-social animals. The less developed the inquisitiveness of one's community is, the less refined one's knowledge will be. But it will be markedly easier to obtain and hold on to. Membership in an actively inquiring community helps one to discover more than they could on their own, but it also makes it more difficult to obtain knowledge of the investigated issue. This contextual sensitivity of knowledge, it seems to me, accurately captures the way we think about intellectual achievement.

### Knowing the truth

Timothy Williamson {% include appendices/ref.html id="williamson2000" o="" p="21-48" %} argues that knowledge is a state of mind. His primary concern is to defend the attribution of mentality against those who maintain that knowledge is factorizable into a narrow, belief-centric mental state and a wide, truth-based connection to the world. But in light of the inquiry-first perspective, it is relevant also to challenge his attribution of statehood. Inquiries evolve, and their self-referential proclivities require the entire evolution to be available to the inquirers. This suggests that the output of the process of inquiry is itself a dilated process. Thus, knowledge is a complex, mental process.

This consequence is immediately worrisome. It would be nice if the form of knowledge ascribing sentences revealed the structure of the knowledge relation. Since the canonical knowledge ascription has a sentential complement clause in the object position, it seems to follow that the object of knowledge has sentential form. It seems, further, to be a basic feature of knowledge ascriptions that they are *factive*, which is to say that they always embed truths in their complement clause. Putting all this together, a simple candidate to be the object of knowledge is any true proposition. Processes are not propositions; thus, we worry.

To the extent that knowledge ascriptions must embed truths,[^factivity] all that is required is that the object of the referenced knowledge relation *determine* a truth. While processes are not themselves truth-apt, they are complexes that contain truth-apt elements, and they can be *queried* at various stages of their development. To do so is to pull out a relevant slice of the process, culling the information it contains both in terms of time and in terms of its structural scope. The result of the query on an inquiry is an *information state*. According to the inquiry-first perspective, the function of knowledge ascriptions is to perform a query on an inquiry specifically for a truth it contains at a time.[^refinement]

Importantly, though, not all knowledge ascriptions are canonical. A variety of putative attributions of knowledge do not have, on their surface, sentential complement clauses, which indicates that they do not embed propositional objects.

<!-- Varieties of knowledge -->
{% include examples/ex.html term="varieties of knowledge" type="sent" %}

Surface appearances aren't always the whole story; perhaps a proper filling out will include cameos by propositions lurking under the surface {% include appendices/ref.html id="stanley2001" o="n" e="." %} But sometimes the best guide to what there is is exactly what appearances tell us; in the case of knowledge ascriptions, it appears that an individual's knowledge can subsume more than just propositional information {% include appendices/ref.html id="bengson2012a,grzankowski2012" o="n" e="." %} [^intellectualism]

The inquiry-first perspective on knowledge offers a pleasing account of this diversity amongst knowledge ascriptions. As we'll see in [Discourse as collaborative update](/chapters/discourse-as-collaborative-update.html), a plausible representation of inquiry at the logical level includes *discourse referents* as elements of the inquiry structure. It is possible to treat knowledge ascriptions in their *personal* guise as querying an inquiry for these objects. And the structural approach to inquiry provides a framework for similarly representing the entities (*ways*, or some other concept/property) needed as objects for knowledge ascriptions in their procedural guise.

By unifying the varieties of knowledge -- treating them as different queries on the same process -- we get a pleasing explanation of this corner of mentality {% include appendices/ref.html id="kitcher1989" o="n" e="." %} Rather than positing distinct kinds of knowledge {% include appendices/ref.html id="grzankowski2012" o="n" e="," %} or risking loss by attempting to reduce one type of knowledge to another {% include appendices/ref.html id="sinhababu2015" o="n" e="," %} we are provided with a single object of knowledge that can accommodate the full variety of ways that such knowledge can be ascribed.

We also get to avoid contorting surface form of knowledge ascriptions in interpreting them.

<!-- Conjunctive knowledge -->
{% include examples/ex.html term="conjunctive knowledge" type="sent" %}

The inquiry-first perspective on knowledge treats ascriptions such as that in [Conjunctive knowledge](#conjunctive-knowledge) as posing a conjunctive query on an inquiry being carried out by the subject. Since the inquiry is a single complex process containing both objectual and propositional elements, we need only make one call to the inquiry and have it return a single information state. This is directly represented in the surface form of the ascription. An approach that treats personal knowledge as a distinct relation from propositional knowledge must appeal to elided material in the deep structure of the conjunctive ascription. An approach that attempts to reduce personal knowledge to propositional knowledge has already given up the game of respecting surface structure, positing additional, unvoiced material even in atomic knowledge ascriptions.

## The value of knowledge

In the *Meno*, Socrates offers a demonstration that any value one accrues by possessing knowledge rather than merely true belief is not provided by its practical benefits.

> **Socrates:** Let me explain. If someone knows the way to Larissa, or anywhere else you like, then when he goes there and takes others with him he will be a good and capable guide, you would agree?
>
> **Meno:** Of course.
>
> **Socrates:** But if a man judges correctly which is the road, though he has never been there and doesn't know it, will he not also guide others aright?
>
> **Meno:** Yes, he will.
>
> **Socrates:** Therefore true opinion is as good a guide as knowledge for the purpose of acting rightly. (97a-b)

In terms of its contribution to successful action, which seems to be a primary motivation for knowledge acquisition, true belief fits the bill no worse. Still, it seems clear that knowledge *is* better in some way than the corresponding merely true belief. Determining the nature of this added benefit is the *epistemic value problem*.

As proposal for grounding the value differential, Socrates likens mere true opinion to a statue sculpted by Daedalus. Both tend to fly away from their possessor, and their value is similarly limited as a result. The added value of possessing knowledge comes from the fact that it is tied down by an *account*. He admits, though, that a full theory of knowledge eludes him.

> **Socrates:** Well of course, I have only been using an analogy myself, not knowledge. But it is not, I am sure, a mere guess to say that right opinion and knowledge are different. There are few things that I should claim to know, but that at least is among them, whatever else it is. (98b)

I think that Socrates proposal for what separates knowledge from true belief is basically correct. I hope in this section to show how, from the inquiry-first perspective, knowledge as belief tied down by an account has more than just analogy on its side.

### Belief stability

Meno's first stab at an answer to Socrates' probing regarding the value of possessing knowledge is a pretty good one. He suggests that the knower is better off than the fortunately successful believer because the knower will successfully navigate her way to Larissa *every time*.

> **Socrates:** So right opinion is something no less useful than knowledge.
>
> **Meno:** Except that the man with knowledge will always be successful, and the man with right opinion only sometimes.
>
> **Socrates:** What? Will he not always be successful so long as he has the right opinion?

Socrates rightfully points out that, holding belief constant across times, she too will never fail to arrive at Larissa. But belief needn't be constant, and a more charitable reading of Meno's answer is that the value of knowledge is in providing an agent with greater belief *stability* than that accruing to mere true belief.

Timothy Williamson {% include appendices/ref.html id="williamson2000" o="" p="62" %} suggests a similar line to this reading of Meno:

> A burglar spends all night ransacking a house, risking discovery by staying so long. We ask what features of the situation when he entered the house led to that result. A reasonable answer is that he knew that there was a diamond in the house. To say just that he believed truly that there was a diamond in the house would be to give a worse explanation, one whose explanans and explanandum are less closely connected. For one possibility consistent with the new explanans is that the burglar entered the house with a true belief that there was a diamond in it derived from false premises. For example, his only reason for believing that there was a diamond in the house might have been that someone told him that there was a diamond under the bed, when in fact the only diamond was in a drawer. He would then very likely have given up his true belief that there was a diamond in the house on discovering the falsity of his belief that there was a diamond under the bed, and abandoned the search.

Knowledge stabilizes belief; this, it explains why individuals persist in their belief, even in the face of misleading defeaters. The suggestion is that knowledge is valuable (in part) because it grounds explanations of behavior.  Value, though, is always value *for* somebody, and the intuition that drives the epistemic value problem is that possessing knowledge is more valuable *for it possessor*. The appeal to the burglar's knowledge as an explanation of his ransacking the house all night may, perhaps, be of use to a detective investigating the robbery after the fact. But explanation of the sort in evidence in Williamson's case is of no value to the burglar. Granted, since he knows that the diamonds are in the house, his belief will be stable, even in the event that his search under the bed leaves him empty handed. But now, the moral of Meno's initial response to Socrates appears at a higher level. His knowledge that the diamonds are in the house is only of use to the burglar (and therefore valuable to him) *so long as he retains it*. Though the truth and justification of his knowledge are not in doubt, his continued belief in it is. To the extent that the burglar reflectively continues his search, it will be on the basis of his confidence in the source of his belief that the diamonds are in the house. His purported knowledge is not enough to turn the trick -- he also needs to have *access* to that knowledge. In other words, the epistemic value problem imposes an *internalist* constraint on knowledge.[^internalism]

### Cognitive virtue

Truth is of basic epistemic value, but it isn't clear that it is the only value relevant to knowledge. Ernest Sosa {% include appendices/ref.html id="sosa2003" o="" %} posits four distinct types of value involved in an individual possessing a bit of knowledge.

<!-- Types of value -->
{% capture valk %}
{% include appendices/typology.html distinction="value of knowledge" biblio="no" %}
{% endcapture %}
{% include examples/def.html type="table" term="Value of knowledge typology" defn=valk %}

*Success* is the fundamental epistemic value, but it does not exhaust the value to which the knower can lay claim. The *praxis* values, too, are genuine values. We think of a system that brings about knowledge as better than a similar system that fails to do so. But praxical value is parasitic on *success* value, both in the sense that it does not exist absent success, and that it adds no value for the knower that is not already provided by success. We, as third parties, can praise a system -- or the agent who implements that system -- for succeeding well. But, having so succeeded, the agent gets nothing more out of having done it well. Performance value seems to gain indepenedence from success, in that it is a measure of the dispositions of a belief forming system, and a disposition can be present even in the absence of its stimulus conditions. The performance value *for* the knower, though, is similarly nothing beyond that provided by success. Having witnessed success, the knower gets little else in knowing that we would also have praised him had the world so conspired to make his belief false.

The additional value associated with knowledge, as nice as they may be for an evaluation of the world, are practically irrelevant for the knower. The intuition that drives the epistemic value problem -- the one that is behind Meno's initial response -- is that possessing knowledge makes a difference to a believer's life.[^epiphenomenalvalue]

Of course, receiving praise can be of benefit to the believer, in a way that potentially goes beyond having achieved success. Praise breeds recognition, which leads others to seek one out as a source. Being known as a successful inquirer increases one's opportunity for engaging in inquiry, which in turn builds one's knowledge base. Knowledge is a principle example of success breeding success. Perhaps what is valuable about knowledge is not that it is *worthy* of praise, but simply that it is praised.

### Machines and products

Linda Zagzebski {% include appendices/ref.html id="zagzebski2003" o="" %} suggests that the epistemic value problem is especially acute for what she calls *machine-product* accounts of knowledge, on which knowledge is taken to be a state that is the output of some state generating process. Principal among these are *reliabilist* accounts of justification, whereby a belief is justified on the basis of the nature of the process that brings the belief about. Knowledge has justified belief as a component, and justified belief comes from belief forming processes that reliably produce true beliefs. But possessing a reliably formed true belief does one nothing that is not provided by possession of any old true belief.

> True belief arising from cognitive activity cannot be like espresso coming out of an espresso maker. Not only is the reliability of the machine insufficient to make the coffee in the cup any better; nothing about the machine makes the product any better. So if knowledge is true belief that is made better by something, knowledge cannot be the external product of the believer in the way the cup of espresso is the external product of the machine. {% include appendices/ref.html id="zagzebski2003" o="n" p="15" %}

What is it about knowledge being an external product of a believer that renders impossible any attempt to produce an unswamped epistemic value? Reliabilist accounts are external in a couple different ways. Reliabilist accounts are *externalist* in that a belief can be justified even though the believing agent does not have access to the souce of the belief. But this externalist element of these accounts is not the source of the worry, because internalist accounts that interpret the difference between justified and merely true belief in terms of *truth-conduciveness* also submit to the value problem. Once truth is achieved, truth-conduciveness provides nothing extra. Zagzebski directly addresses Lawrence Bonjour's approach to justification.

Reliabilist accounts are also *extrinsic* in that the justification inferring property is distinct from the belief it produces. Zagzebski seems to think that extrinsicness is the diagnosis of the value problem for reliabilism, but modal accounts show this isn't the case. The problem is that truth is a powerful value, and it's difficult to find another practical value that doesn't simply reduce to that.

### Justifying processes

But the problem isn't with the machine-product model itself. The problem has to do with the nature of the product. The solution is to imbue the product with the credit deserving feature --  the *account* of the state's genesis. Doing so injects the process into the product.

This only gets us part of the way. There is still an issue with the *unity* of knowledge. Why don't we still have a swamping issue, just now with one part of knowledge swamping the value provided by another part? Many parts would be so swamped, but the process as part is different because it provides independent, practical value.

Knowledge isn't just valuable because with it you arrive at Larissa. It is valuable because you can explain your route to others.

Knowledge queries inquiry, and the query encodes the process of inquiry. The individual beliefs abstracted from the state are known, but they are not the knowledge in so far as knowledge is value additive.

Knowledge is belief with an account. It is useful because having an account can assist you in an inquiry, and this has practical value. The process is valuable; it is included as part of the knowledge, we do get something of genuine practical value.

{% include elements/chapterend.html %}

[^inquiryStalnaker]:
    According to this initial explication, the machinery of inquiry properly includes that presumed by the conception preferred by Robert Stalnaker in which inquiry is "the enterprise of forming, testing, and revising beliefs" {% include appendices/ref.html id="stalnaker1987" o="" e="," p='ix' %}. As will become clear in what follows, there is no reason to restrict inquiry to operations on states of *belief*, nor ought we to presume that forming, testing, and revising exhaust the inquiry-relevant operations on mental states.

[^knowtoomuch]:
    Set aside the sense of *knowing too much* in which an agent has information that it would be in their other interests to remain ignorant of.

[^inclusion]:
    This is not completely true; we can make sense of one state strictly containing another.

[^QACongruence]:
    We'll revisit the anticipation and restriction of questions later on when we discuss focus and Q/A Congruence in [Dispute in Discourse](/chapters/dispute-in-discourse.html)

[^connection]:
    Jonathan Schaffer {% include appendices/ref.html id="schaffer2005" o="" %} also explores of the nature of knowledge in terms of its connection to inquiry, though his development of the nature of inquiry differs from that in the text.

[^ability]:
    Is this true? Haven't I build *actual* collaboration into the framework by way of the sandbox?

[^goldman]:
    As would Alvin Goldman's {% include appendices/ref.html id="goldman1976" o="" %} fake barn cases among others.

[^refinement]:
    This picture is fitting for our account of refinement to be addressed in the last chapter.

[^multiknowledge]:
    It is thus a consequence of Levi's approach to inquiry as transition between states of knowledge following the dictates of a revision operator that there can be multiple, incompatible states of knowledge.

[^agm]:
    The classic treatment of contraction is AGM (Alchourron 1985), and I refer the reader there for details on the relation.

[^contain]:
    Even in the case of containment, having more information does not necessarily make the state more desirable. The more informative state involves one way of expanding from the less informative one. But independent of knowledge of the *alternative* expansions, there is no saying that such an expansion ought to be carried out.

[^factivity]:
    For a dissenting opinion, see {% include appendices/ref.html id="hazlett2012" o="n" e="." %}

[^intellectualism]:
    I focus here on *intellectualist* accounts of knowledge , setting aside explanations of non-canonical knowledge ascriptions that treat them as picking out a distinct kind of knowledge, one that characterizes some non-mental features of an individual, such as an *ability* they possess {% include appendices/ref.html id="ryle1949,lewis1988,bengson2012" o="n" e="." %}

[^informationpotential]:
    In other work, Levi has attempted to incorporate the truth acquisition element of the Jamesian amendment {% include appendices/ref.html id="levi1967,rott2006" o="n" e="." %} He defines a sentence's *information potential* -- a real-number value normalized to [0,1]. This value can then be used with an inquirer's subjective probability function to determined whether the sentence is worth adding to their information state.

[^internalism]:
    In yet other words, the stability of belief requires not just that the agent has knowledge, but that he *knows that* he does. And for someone else's words, directed toward modal conditions on knowledge generally, see {% include appendices/ref.html id="gardiner" o="n" e="." %}

[^swamping]:
    Ernest Sosa {% include appendices/ref.html id="sosa2003" o="" %} also develops this worry for reliabilism.

[^virtue]:
    Other developments of virtue epistemology motivated by the purported value of knowledge can be found in {% include appendices/ref.html id="riggs2009,sosa2003" o="n" e="." %}

[^epiphenomenalvalue]:
    One may at this point simply put their foot down and claim that the epistemic value problem is solved when we finger a feature of knowledge that makes the knower better off than the mere believer, even if the betterness is epiphenomenal. This seems to be the idea behind many virtue epistemological solutions {% include appendices/ref.html id="riggs2009,zagzebski2003" o="n" e="." %} Knowledge is a virtue; it thus adds to a life, whether the knower cares about it or not. It's hard to say exactly what our intuition in the epistemic value problem is tracking, and I don't have an argument that it can't be such an epiphenomenal value. But I think we do have reason to think that knowledge adds practical value over mere true belief, and I hope that my positive account lends credence to my diagnosis of the value problem.

    Virtue epistemological solutions, in so far as they posit a distinctive value possessed by knowledge, must also explain why not all knowledge is valuable. Sosa's {% include appendices/ref.html id="sosa2003" o="" %} example of the beachcomber who acquires knowledge of the number of grains of sand in his palm the hard way does not acquire something valuable. But he has knowledge just the same, and if there is a distinctive epistemic virtue, then his life ought to be better off for the counting.

[^conditionalization]:
    More or less the system outlined above, perhaps augmented with a probability function and a mechanism for accommodating evidence that supports a proposition without pushing it into the realm of full belief.

[^interleaved]:
    There are many ways to make sense of interleaved contents, and I don't see that the basic structure of inquiry requires any one type of interleaved content. But a quite natural one is *structural interleaving* -- contributions have components, and different contributions are interleaved to the extent that they share components. I will make use of this notion of interleaved content in my account of contrastive predication in [Dispute in Discourse](/chapters/dispute-in-discourse.html).

[^peircetesting]:
    This conception of induction is present in Peirce's writings as well:

    > The operation of testing a hypothesis by experiment, which consists in remarking that, if it is true, observations made under certain conditions ought to have certain results, and then causing those conditions to be fulfilled, and noting the results, and if they are favourable, extending a certain confidence to the hypothesis, I call *induction*. (Peirce, Abduction and Induction, p. 152)

    Note that there is no mention in this description of case or generalizations. Presumably, Peirce would further agree that in the instance where the results of the test are not favourable, a certain renunciation or adjustment of the hypothesis is in order.

[^downdate]:
    This feature of corrective contributions will be elaborated further in [Dispute in discoruse](/chapters/dispute-in-discourse.html).

[^talkingover]:
    It's true that two participants in a discourse can talk at the same time, and its possible for this to result in two contributions simultaneously committed to the discourse. But I take it that this *talking over* method of parallel contribution to discourse is rare enough (and even more rarely effective) to set it aside.
