---
title: Collaborative update semantics
level: 3
type: chapter
toc: yes
abstract:
  Genuine contributions to discourse change the state of the conversational scoreboard in distinctive ways. Incorporating ideas from version control in computer programming, I develop an update semantics that accommodates collaborative inquiry. In *collaborative update semantics*, contribution operators attach to propositional radicals, and contributions initiated by one utterance may not be completed until a later utterance is added. In particular, conjecture operators function by opening a *sandbox* in which further discourse builds on the conjecture. When all parties are satisfied, the sandbox contents are merged into the original information state, which is additionally marked for the purposes of tracking the changes.
---

## Scoreboards and best systems

David Lewis' {% include ref.html id='lewis1979f' %} conversational {% include concept.html word='scoreboard' %} has been incredibly fruitful as a tool in understanding the interpretive effects of utterances in conversation. Many contemporary theoris of the semantico-pragmatic impact of utterances invoke the scoreboard model, with their differences being primarily in regards to the number, function, and arrangement of the various lights and placards that fill the recording surface.

The scoreboard is the logical platform on which the conversation is built. It serves as a record of the contributions that have been made to the conversation, and it dictates both whether an utterance is deemed to provide an acceptable contribution to the conversation and how acceptable utterances are interpreted. A crucial feature of the scoreboard it is not merely a list of unstructured information; the information is formatted in such a way to maximize its robustness and simplicity as an interpretive tool. As a first pass, we can think of the scoreboard as field of slots with participants to the conversation wielding a set of pegs. There is a many-to-one relationship between pegs and slots, but certain pegs can only fit in certain slots. The pegs represent the inquiry specific content of utterances, while the slots are features of conversation generally, determined by the nature of the inquiry that it implements.

Philosophers of language generally divides the project of interpretation into a number of modules, principal among which are the {% include concept.html word='semantic' base='semantics' %} and the {% include concept.html word='pragmatic' base='pragmatics' %} modules. Where to draw the line between semantic and pragmatic effects of utterances, as well as whether we ought to draw any dividing lines at all, is a theoretical issue dependent on the productivity the distinction[^Semprag]. 

But to a large extent, if an adequate formal representation of an interpretive effect is available, what category it falls in is irrelevant. This is especially so, since there are few instances of an interpretive effect being wholly isolated from other effects of the same utterance. Even certain effects that have often gone under the heading of conventional implicature, which Chris Potts {% include ref.html id="potts2005" %} has argued is a category of meaning distinct from the semantic domain based on its independence from standardly regarded semantic content, are seen to be at minimum {% include concept.html word='weakly interacting meaning particles' %} (WIMPS) with respect to semantic content. This is evident from crossover effects found with anaphora resolution across appositive lines {% include ref.html id='anderbois2013' o='n' e="." %}

[^Semprag]: See the entries in [That sem/prag anthology].

Scoreboard construction is not so much a project in semantics or pragmatics in particular as a project of representing an individual discursant's model of the conversation. Pre-theoretically, when forming their model of the conversation, discursants can bring to bear their worldly background knowledge and particular extra-lingusitic features of the discourse context in addition to the utterances they hear. The goal of scoreboard construction is to find a structure that provides a theoretically virtuous account of the empirical data. Any distinctions between types of structure the theory imposes should be tested on the basis of their theoretical virtue.

The nature of the empirical data is itself up for debate, but it is widely accepted (and I will presume) that we can take language users' intuitions about {% include concept.html word='truth conditions' %} [cite TC intuitions], {% include concept.html word='anaphoric relations' %} {% include ref.html id="bittner2011" o="n" %}, and {% include concept.html word='illocutionary force' base='speech act' %} [cite force intuitions] as the data points our theory must account for. 

In addition, I take it as a precondition on the adequacy of a linguistic theory that it be implementable by individuals in the course of conversation. This criterion represents a departure from Lewis' picture of the project. Lewis thinks of semantic theory in terms of best systems, for which the sole criteria for theorizing is that the theory be empirically adequate and optimize *simplicity* and *strength* from the perspective of the theorizer.[^Bestsystem] But we aren't just interested in language from a third-party prespective. We think of linguistic agents as *possessing* a theory of interpretation, and *making use of* that theory in the process of discourse. This first-personal perpsective ought to place constraints on what we take to be adequate accounts of the interpretive framework. 

[^Bestsystem]: Lewis also adds *fit* as a criterion for theorizing about non-deterministic systems. See {% include ref.html id="hicks2014" o="n" %} for an amendment of the best system account that incorporates the idea that the conditions of use of a theory may count as a criterion for adequacy of the theory. 

This additional criterion, call it a *usability constraint*, whether we think of it as an empirical constraint or a theoretical precondition, is similar in spirit to Davidson's {% include concept.html word='learnability' %} criterion, which holds that a theory of interpretation is inadequate if it presumes infinite knowledge for anyone who possessed it. While there is a nice transcendental deduction speaking in favor of Davidson's constraint -- human's do possess a theory of language, and as cognitively finite individuals, they do not have infinite space to dedicate to language resources -- the usability constraint is more methodological.[^Bontly]

[^Bontly]: Same idea as the simplicity motivation in linguistic theory that {% include ref.html id="bontly2005" o='n' %} discusses? Something about semantic innocence?

As theoretical posits, various scoreboard constructs will be judged both on empirical adequacy and on theoretical virtue. No addition to the board is warranted unless there is a reliably measurable interpretive effect that it purportedly captures. But in addition to this criterion, consolidated boards whose structure parallels our understanding of linguistic processing ought to be preferred over their empirically adequate but unweildy brethren.[^Morecriteria]

[^Morecriteria]: An additional criteria that seem to straddle the line between empirical coverage and theoretical virtue are is the distribution patterns of expressions throughout the language, such as an expression's embedding proclivities or the diversity of linguistic contexts in which it occurs

There are challenges to the best systems account in application to the governing principles of the physical structure of the world. Primary among these is its reliance on the notion of *simplicity*. Even if we grant as a methodological principle of scientific theorizing that simpler rules are to be preferred, there is no agreed upon criterion for relative simplicity that makes the decision procedure in any way objective. Lewis unabashedly relativized simplicity to the language within which the theorizing takes place, suggesting that simplicity be measured in terms of the length of the basic syntactic structures appearing in the laws. But as Nelson Goodman {% include ref.html id="goodman1983" o="" %} has taught us, languages can vary drastically in syntactic specification of basic concepts, with no one language claiming pride of place over another. Unless one language can be separated from the rest, as Ted Sider {% include ref.html id="sider2013" o="" e="," %} has argued is possible the best system account treats status as a law of nature as a dependent upon the theorizer's concept of elegance.

This modicum of *irrealism* inherent in the best system account is a second issue for its application in the realm of physical structure. It is well-accepted that there are limits to what is available empirically to human observers of the world, and some extreme empiricists go so far as to infer that there is nothing to posit beyond the empirically verifiable elements of our scientific models {% include ref.html id="churchland1982" o="n" e="," %} but it is difficult to shake the idea that there is a physical reality out there that our theoretical efforts attempt to *describe* rather than *determine*.

Despite these concerns in the realm of the physical sciences, the best systems account fares well in application to *linguistic interpretation*.

## General update semantics

{% include concept.html word='Update semantics' %} is a class of theories of conversational structure in which the conversational scoreboard is represented by a set-theoretic structure that we will refer to as the {% include concept.html word='information state.' %} {% include concept.html word='Discourse dynamics' %} is implemented by means of {% include concept.html word='updates' base='update' %}, which are operations on this structure.

Collaborative update semantics builds off of a standard update semantics. Following Sarah Murray {% include ref.html id="murray2014" %}, information states are *articulated* to account for different types of update that are relevant to discourse dynamics. One element is the {% include concept.html word='common ground,' %} a possibility space represented by a set of possible worlds considered to be ways the world could be according to what the conversational participants mutually take for granted. {% include concept.html word='Informative updates' base='informative update' %} place {% include concept.html word='conditions' base='condition' %} on the common ground. Formally, informative updates function by intersection of the common ground with the {% include concept.html word='content' %} of the utterance from which they stem. Informative updates are used to model the speech act of {% include concept.html word='assertion.' %}

Structuring updates partition the common ground. Formally, they impose relations on the elements of the common ground, thus dividing the possibility space up into regions on the basis of shared characteristics. The speech acts of *question* and *command* are modeled as structuring updates.

There are two ways to accommodate structuring updates within info states. One is to directly impose them upon the common ground. The other is to add them to a specialized set of relations.

Discourse referent updates operate by adding to a set of discourse referents. The dref set is drawn upon for anaphoric reference during the course of conversation. Dref elements can be optionally marked by their ontological type or their order of introduction to account for subtlties in anaphoric reference and for connections between drefs.

In addition, the dref set informs both informative and structuring updates by providing content for the anaphoric pronouns in utterances that convey those updates.

## *Impos*ing and *prop*osing

The distinctive role of assertion is to restrict the common ground to its intersection with the content of the proposition asserted. Accepting this function for assertion, we are left with the question of whether the power of so modifying the common ground is in the hands of the asserter to *impose* the restriction upon the common ground, or if it is the baliwick of her interlocutors to accept and implement the speaker's *proposal*.

In the Stalnakerian model {% include ref.html id="stalnaker1978" o="" e='.' %} there is no machinery to implement this distinction. All assertoric operations are performed as impositions on the common ground. But certain extensions of the framework have recognized value in the distinction and have integrated elements into the framework to account for it.

In {% include concept.html word="inquisitive semantics" %} {% include ref.html id="groenendijk2009,westera2012" o="n" e=','%} propositions are represented as sets of sets of possible worlds. Every utterance presents such a proposition, and restriction of the common ground depends on selection of the intersecting set from among the elements of the proposition. The framework thus allows a role the speaker's interlocutors in enacting the assertive function. In the trivial case of a fully *informative* utterance, the proposition contains a single set of worlds. In this case, the selective role is reduced to either accepting or rejecting the assertive proposal.

Sarah Murray's articulated information states {% include ref.html id="murray2014" %} similarly allows us to distinguish between proposed and imposed changes to the common ground by introducing the notion of *structuring updates* -- updates that ogranize the elements of the common ground without changing its membership. Proposals present this structure, highlighting a subset of the common ground and recommending it for elimination, but the power of implementing its recommendation can be delegated to other conversational participants. Murray's framework allows us to account for different types of content present in a single utterance in terms of the different ways they impact the information state. A principle use of the framework is in distinguishing between *at-issue* and *not-at-issue* content. This is an information packaging distinction. At-issue content is information that is up for discussion; it is proposed and interlocutors are given the opportunity to reject it. Not-at-issue content is backgrounded material that is either presumed or must be acknowledged in order for the at-issue content to make sense in the context. Not-at-issue content is imposed on the common ground, bypassing discussion and directly altering it.

Murray has also used the articulated information state framework to account for the distinctive role of *evidentials* in discourse. But this extension reveals an issue with the assertion as proposal framework. Since assertions don't have any independent impact on the common ground, their function is essentially incomplete. Interpretation must wait until the proposal passes the acceptance phase of the discourse. This is a problem because single utterances can involve coordinated informative and structuring updates. For instance: 

{% include ex.html type="ex" sent="[Sue danced]<sub>heard</sub>, and [Jim sang]<sub>saw</sub>." name="sing" %}
    
The second conjunct of the assertion requires a direct imposition on the common ground, but we are still in limbo after the first conjunct, which is merely proposed.

Both of these proposals add useful nuance to the structure of discourse dynamics. But the ability to accept or reject discourse proposals is a minimal collaborative ability for interlocutors. It lies at one extreme of a specturm of possible collaborative moves. 
Full collaboration requires that we imbue our framework of discourse dynamics with a way of accommodating an extended process of input from discourse participants as well as a way of bypassing the need for collaboration in the instance of coordinated structures as in [Sing and dance](#sing).

## Collaborative contributions

In the terminology of Clark and Schlegloff {% include ref.html id="clark1992" e="," %} a *try-marker* is an refering expression within an utterance that is marked to indicate the speaker's understanding that the hearer may not pick up on the reference. The speaker, not wanting to derail the conversation to conclusively rectify the potential for confusion, offers the reference as a suggestion. She additionally marks the suggestion, usually by means of an upward intonational contour followed by brief pause, to allow the hearer an opportunity to pursue further clarification if such is needed. The try-marker is a text-book example of the preference in successful conversation for minimum effort over assured uptake.

The speech act of conjecture plays a similar role for reference to propositional type discourse objects. It is an attempt to impose a restriction on the common ground in the absence of certainty that all conversational commitments are in place for the restriction. The significance of conjecture in conversation highlights a preference for advancing the flow of inquiry over achieving certainty.

Both try-markers for entity level reference and conjecture for proposition level reference rely on the role of the speaker's interlocutor as corrector. Speakers feel comfortable prefering speed and simplicity over accuracy because they know that a diligent interlocutor will correct them if need be.

Collaboration is a matter of joint contribution to discourse dynamics. Since all discourse contributions come by way of updates on the info state, collaboration will be modeled as joint updating.

Discourse is different than wall building in that the nature of discourse processing requires all individual contributions to take place in serial fashion. It isn't possible for two interlocutors to contribute to a single discourse update simultaneously. However, they can contribute in tandem by delaying the impact of an update until after both individuals have contributed.

The way to do this is to treat initial contributions as incomplete in certain respects and have the completion contribution fill in the missing pieces. Thus, initial contributions are the semantic correlates of try-markers. 

Of course, not all utterances call for completion. It is quite possible to coherently converse in the absence of any input from one's interlocutors (as in lectures). We generalize the proposal by treating all contributions as incomplete (perhaps trivially) and conjoin them with a default saturation, which is operative unless countered by a completion contribution.

We can represent the difference between assertion and *conjecture* in terms of the saturation of the incomplete contribution. Namely, the difference between the two is a matter of the *strength* of the default saturation. This relates, on Searle's dimensions of speech act individuation, to the strength of the illocutionary point, whereby assertion is individuated from conjecture due to the force with which it is put forth.

Collaborative document creation poses an interesting challenge in the computing development world. Two individuals, physically separated, can gain simultaneous access to a single, electronic document and update it in parallel. This makes for efficient collaboration until the individuals attempt to impose conflicting changes to the document. Ultimately, avoiding contradiction requires implementing a priority filter whereby one of the changes is selected. This can be done in real time by a constant priority function that gives one user overriding privilege. But if we assume the collaborators to be editorial peers, then a more subtle, content based selection procedure is needed. This, too, could be implemented in real time with a sufficiently intelligent computing kernel. It's presumptive to think that such a program is even possible, given the importance of context to content determination. But the spirit of the collaborative enterprise has a better solution anyway -- allow users to view the changes side by side and make each priority selection for the nonce. Implementation of this protocol requires additional machinery. We need a means of tracking changes and holding them until they can be verified. This can be done on a single document equipped with additional ways of marking changes with author, time, and whether additive or subtractive. Or, we can give each collaborator her own copy of the document to make changes to, and come together for a merging session when individual editing is complete.

This second method, an example of version control, has a clear corelate in linguistic exchange -- the linguistic scoreboard.

The collaborative process is thus decomposed into 3 parts. The individuals access distinct copies of the file to which they make their changes. The changes are then staged for acceptance, and merged using the collaboratively determined priority function in case of conflicts. The result is the shared document to which all members have read access.

Utterance is a staging procedure.

Nonce priority setting is a valuable tool to have at interlocutor's disposal, but it is also resource intensive. So, linguistic practice has rigidified a protocol for many tasks. For instance, content determination for "now" is ceded to the speaker, though there is no essential reason why this must be the case (See Parsons).

Many other merge conflict points have rigidified to speaker priortiy, though others are either completely fluid, or controversially rigidified. I submit that controversy over intuitions regarding disagreement is frequently due to the fact that much conflict resolution requires nonce merging rules.

Mark Richard relativism as open determination of appropriate scale.

## Sandboxes and versions

In general, collaboration cuts a wide swathe and many issues can be sandboxed. If we think of utterances as composing some sort of informational content with some sort of discourse relevant intention for how that information is used, then saturation can be required to fill in a missing piece from either of those components.

A preference for belief in the face of uncertainty is motivated in part by the fact that not every choice is a matter of life or death.  It is further supported by the fact that inquiries are packaged with corrective feedback mechanisms.  An important such mechanism is the build and test update procedure that inquiry exhibits. Inquiries are cummulatively built in a step by step process. One contributor to the inquiry adds a proposal to the mutual inquiry workspace (akin to the sandbox in comupter program development jargon), at which point it can be played around with by all members of the inquiry before being ultimately accepted or rejected. Thinking of inquiry as involving separate scoreboards and a shared sandbox in addition to the long term storage of the shared scoreboard allows us to capture the more subtle process of inquiry development and update.  It also allows us to incorporate a type of file versioning common to the collaborative computer programming community.  When contributions are in the working memory of the sandbox, they demand little long term cognitive resources.  Anaphoric relations do not span long temporal distances, and the commitments to the consequences of posits within the sandbox are limited. But once tests of the contribution have run their course, the output is entered into longer term storage, and entry into this level of the inquiry record carries stiffer commitments.  Of course, even here the vetting process is fallible, and we may enter falsehoods into the inquiry record. It is further possible that these falsehoods only raise problems at some distance from their original entry into the record. But inquirers have the resources to correct for these failed entries when they are detected.  To explain this capacity, it is helpful to draw an analogy to another tool of the computer program development community, that of file versioning. When one is working on a file for which there are multiple collaborators, it is helpful to have one's own copy, on which changes can be made.  Then the team needs a common file, into which they can enter their changes.  To ensure that conflicting changes do not corrupt the file, we incorporate a system of file versioning, in which each amendment to the file is marked to indicate important facts about the amendments such as the content, time, and author of the amendments. Then in addition to the continuously amended file, we store also this versioning data.  This supplements  the inquiry with a map of its history.  One of the great benefits of this addition is that it allows us to restore the inquiry at any point if it starts to run off the rails.  If a false entry into the record only later reveals itself to be problematic, the inquiry need not be derailed entirely because we can simply revert back to a point in the inquiry prior to the entry of that falsehood using our version history. Inquiries can withstand failures.

These corrective mechanisms are an important reason that efficiency often demands that we make speculative additions to the common ground as opposed to waiting until we can obtain certainty that the addition is true (or otherwise appropriate). But the success of this procedure depends highly on a shared understanding of each party's role in the inquiry. An individual can only feel comfortable in proposing a speculative addition to the common ground if they believe that their collaborators will correct their contribution to the best of their ability.  And this requires interlocutors to be more than passive recipients of information.  They must use openings in the conversation to voice disapproval or uncertainty in addition to registering understanding and acceptance of what has been presented.

Disagreement is the tool by which interlocutors can check each other's flights of fancy.  And, I maintain, it is a tool we both know how to wield, and are prepared to let others weild against us.  The primary role of joint inquiry is to expedite what would be an extremely tedious task if attempted alone.  Even alone, the task can be sped up via judicious application of speculative intellectual leaps, though the risk involved cannot be wholly eliminated.  The collaborative facet of joint inquiry provides extra motivation for assuming the risk -- the cooperative interlocutor, to the extent she is able, will pull you back from the ledge by voicing her disagreement. 

File versioning differs from backup in that backup works on a timed basis, versioning is event (change) triggered. Backups are usually system wide, versioning is per file. Backups are usually stored on a different drive, versions are local.

File versioning differs from *journaling* in that journaling records changes and requires acceptance before the file is updated, versioning stores multiple updated files.

+ Checkout
+ Track changes
+ Merge

## Defaults and content evolution

Not every relation in intension corresponds to a relation in extension.

Stanley and Szabo: the way quantifiers interact with counterfactuals suggests that we should take contexts to contribute properties for domain restriction as opposed to sets. This is because evaluation of the counterfactual may require taking different domains for different possible worlds.

You can get a relation-in-intension from an open sentence, but as a purely semantic object, there is no specification of a relation independent of a domain. But, we can have a meta-domain of which the common ground is a subset and have relations-in-intension defined in terms of that.

It's possible that these update types are not mutually exclusive. It's also possible that theories that differ only in notational ways may assign updates to different types. For instance, one may take an update to directly alter an element of the common ground to reflect a relation among *its* elements, in which case we would consider it to be a structuring update. Or, one could add a specification of a domain and range as a new element of the state of information, thereby providing all the tools necessary for constructing the relation among elements of another element of the state of information. In this case, the update appears to be of the dref variety. In effect, the first option replaces one set of entities with a *relation-in-extension* among the same entities, and the second option adds a *relation-in-intension* to the information state. I don't think there is reason to bicker over the details here so long as both options equally account for intuitive interpretations of the linguistic item under consideration. 

However, there may be empirical reasons to choose one over the other. If the update functions, for instance, by replacing an unordered set by an ordered one, then we may take certain information to be lost; namely, that the state once represented the set as unordered. But if the relation-in-intension is added to the information state, then we have the tools to construct the relation-in-extension without directly doctoring the set to which it applies. It may be that adequte interpretation of certain extended discourses requires the presence of the original, undoctored set in addition to the relation.

One way in which a similar sort of difference has practical import is in the interaction of intensional particles. For instance, in providing their theory of quantifier domain restriction, Stanley and Szabo suggest that we ought to treat the entities contributed by context as properties rather than sets. The reason is that quantifiers can be embedded under counterfactuals, and adequately accounting for these complex sentences requires having access to different domain restrictions relative to different worlds of evaluation. If context provides a property, it can provide this; if it offers only a set, then it cannot.

Intensional updates matter for purposes of tracking changes to the information state across the course of a conversation. If we think of semantics as truly dynamic, then extensional updates will not suffice. We can bring this point out be considering the possibility of implementing a downdate operation on information states.

## Accuracy and Precision

How then do we understand the distinctive contribution of conjecture? It may seem that conjecture has the same information state altering role as assertion, and that their difference is simply a matter of the strength of commitment that they carry with them. While assertion commits the individual to the truth of the asserted content very strongly, perhaps requiring that they know the assertion to be true, appropriate conjecture requires merely that the speaker have good reason for thinking the content true. 

Whatever the merits of the norm based approach to speech-act individuation, this proposal overlooks the fact that assertion stands on one corner of a two-dimensional spectrum of possible speech-acts. Assertions must be perfectly *accurate* in that they commit the speaker to their truth. They are also perfectly *precise* in that they commit the speaker to the truth of the exact proposition asserted. Conjecture allows the speaker a buffer against the commitment to precision for the potential value of striking on something gold.

Mark Richard {% include ref.html id="richard2004" o="" %} argues that even contextualists need to incorporate relativist principles in order to accommodate variations in standards across contexts. In so far as collaborative update semantics incorporates the imprecision of conjecture, it supports relativism.

## Elaborations

### Collaboration

In collaborative update semantics, the primary functional unit is the *contribution*. Utterances in discourse can *initiate* a contribution, *complete* a contribution, or initiate a contribution with a *default* completion.

We define three *initiation operators* (each paired with a *completion operator*), which operate in distinctive ways on the *information state* of the discourse.

We elaborate update semantics in two ways to capture collaboration:

+ Sentences express *informational radicals*, which are semantically incomplete objects in the sense of {% include ref.html id="bach1994" o="n" e="." %} 
    + The informational radical represents the informational element upon which collaboration takes place. 
    + The parties to the discourse can provide alternative *saturations* of the radical
    + The fact that the radical remains constant throughout the process captures the special coherence of collaborative discourse
+ Focus marking initiates a sandbox winthin which the collaboration can take place, isolated from the rest of the discourse platform.
    + Try-marking is a speaker's way of initiating a sandbox for her own utterance.
    + Contrastive topic is one way of initiating a sandbox to delve into a previous utterance.
    + 
### New drefs
The first tool of collaborative update sematnics is the sandbox, a platofrm, isolated from the primary information state, on which the collaborative process takes place. We introduce two discourse referents for manipulating sandboxes. 

+ A checkout, of type [information state], which duplicates (in its entirety or in part) the information state for tentative manipulation in the collaborative process. 
    + Linked to a focus marker, either a try-marker or a contrastive focus.
+ A merge, of type [information state + message/checksum], which intersects the information state with the sandbox state at the end of collaboration and adds to it a checksum as  way of tracking the changes that were made on the basis of the collaborative process. Useful for restoring past phases of the discourse.
    + Implemented by a sounds-good-marker, an acceptance of the end of collaboration.
    
### Relations-in-intension

+ For purposes of tracking?
### Information state
+ Common ground (set of worlds taken as genuine possibilities for the purposes of inquiry)
+ Issues set
+ Merge tracking
+ Active sandbox

### Utterances
+ Contribution operator, Propositional radical [, Completion]
+ Contribution operator prepares the radical for integration into discourse, either by initiating it or completing it in some way.
+ We must allow for the possibility of mixed contribution utterances, such as:
    + "He went to the opera and saw [Pagliacci]<sub>t</sub>"
    + Alternatively, a single utterance may transition from being conjectured to being asserted at the end of sandboxing.
    + To accommodate this, we take all contributions to take propositional radicals.
+ Utterance as a *commit* made relative to a domain (info-state, sandbox)

### Contributions
+ Adjust the information state in a distinctive way
+ Assertion --> Acceptance
+ Question --> Answer
+ Conjecture --> Correction
+ Focus as correction marker (indicates that it is operating within the sandbox set)

### Propositional radical
+ Propositional structure, but incomplete {% include ref.html id="bach1994" %}
+ Bare plural + predicate
+ Bach
    + Expressed by a semantically uderdeterminate sentence. No truth condition is expressed without further elaboration that goes beyond what is said.
    + Completion: Filling in a propositional radical (no proposition expressed)
    + Expansion: Fleshing out a minimal (skeletal) proposition (proposition expressed, going by sentence meaning alone, is not what the speaker means)
+ A function that takes a contribution type into a contribution segment, optionally taking a saturation operator.

### Assertion
+ Propose CG restriction as initiation phase
+ Accurate and precise
+ Proposal enacted with acceptance at completion phase

### Question
+ Add issue to issue set
+ Relativized to CG, partitions completely
+ Answer enacts the proposal, partitioning the CG
+ Initiates tracking to allow for partial anwsers
+ Relations in intension needed for tracking

### Conjecture
+ Proposed CG restriction
+ Accurate but imprecise
+ Correction (perhaps trivial) initiates tracking for collaboration
+ Extended completion phase with modifications, disputes, and defenses
+ The *sounds good* marker enacts the final proposal, restricting the CG
+ Takes an imprecise radical, saturates it uniformly, opens a sandbox

### Interlocking contributions
+ An answer to a question is also an assertion or conjecture initiation
+ It's in principle possible for new sandboxes to be opened within sandboxes at any level of iteration. I don't explore the complications of this possibility here, mostly because such discourses, it seems to me, degrade rather quickly and are broken off in a "Wait, what were we talking about?" fashion.

### Accuracy and precision
+ Assertions are accurate and precise
+ Questions are non-accurate
    + Polar questions are precise?
    + Open questions are imprecise?
+ Conjectures are accurate but imprecise
    + Try-markers seem to open the possibility of inaccurate conjectures, but the try-marker is really just another form of imprecision: imprecise reference puts out a referring cloud, which will latch on to the object if it falls within the cloud.
+ Imperatives are non-accurate and may be either precise or imprecise

### Precision
+ Precision is an avenue of collaboration

### Speech-act identity

There may be no answer to the question of what speech act an utterance performs. This is because its function depends on how it is accepted in conversation. If interlocutors accept it without debate, then it enters the info state as an assertion. If debate ensues, it is conjectural, and precision determination takes place. The final result is merged with the info state as an assertion.

This view is warranted as the primary conjecture marker is contrastive topic, which is introduced *in response to* an attempted contribution. 

Conjecture and assertion are identical. Both put forward a propositional radical with a default saturation. Only if the saturation is challenged do we have a conjectural contribution type.

I like the idea of speech-act determination being in the hands of the interlocutor (and thus relative).

## References

{% include reflist.html %}

***
{: style="border-bottom:1px solid #aaa;margin:1em;"}
