---
title: Collaborative discourse dynamics
level: 3
type: chapter
toc: yes
abstract:
  Genuine contributions to discourse change the state of the conversational scoreboard in distinctive ways. Incorporating ideas from version control in computer programming, I develop an update semantics that accommodates collaborative inquiry. In *collaborative update semantics*, contribution operators attach to propositional radicals, and contributions initiated by one utterance may not be completed until a later utterance is added. In particular, conjecture operators function by opening a *sandbox* in which further discourse builds on the conjecture. When all parties are satisfied, the sandbox contents are merged into the original information state, which is additionally marked for the purposes of tracking the changes.
---

# Scoreboards and best systems

David Lewis' {% include appendices/ref.html id='lewis1979f' %} suggestion that utterances in a conversation function as updates to values housed in the various slots of a conversational {% include appendices/word.html word='scoreboard' %} posits a logical platform on which the conversation is built. The scoreboard serves as a record of the contributions that have been made to the conversation, and it dictates both whether an utterance is deemed to provide an acceptable contribution to the conversation and how acceptable utterances are interpreted. A crucial feature of the scoreboard is that it is not merely an unstructured list of information. Rather, the information is formatted in such a way as to maximize its robustness and simplicity as an interpretive tool.

As a first pass, we can think of the scoreboard as a field of slots and  participants to the conversation as wielding a set of pegs. There is a many-to-one relationship between pegs and slots, but certain pegs can only fit in certain slots. The pegs represent the inquiry specific content of utterances, while the slots are features of conversation generally, determined by the nature of the inquiry that it implements.

## Constructing an interpretation

Before we get to the question of what bells and pulleys come attached to conversational scoreboards, we face the question of what the posit of such a recording surface amounts to, and how this crucial interpretive device is instantiated. Lewis frames his preferred answer as such:

> Conversational score is, by definition, whatever the mental scoreboards say it is; but we refrain from trying to say just what the conversationalists' mental scoreboards are. We assume that some or other mental representations are present that play the role of a scoreboard, in the following sense: what they register depends on the history of the conversation in a way that score should according to the rules. The rules specifying the kinematics of score thereby specify the role of a scoreboard; the scoreboard is whatever best fits this role; and the score is whatever this scoreboard registers. {% include appendices/ref.html id='lewis1979f' p="346" %}

Under this characterization, determination of the conversational score, and the structure of the board on which it is represented is a project of *best system*-style theory determination:

> Whatever we may or may not ever come to know, there exist (as abstract objects) innumerable true deductive systems: deductively closed, axiomatizable sets of true sentences. Of these true deductive systems, some can be axiomatized more *simply* than others. Also, some of them have more *strength*, or *information content*, than others. The virtues of simplicity and strength tend to conflict. Simplicity without strength can be had from pure logic, strength without simplicity from (the deductive closure of) an almanac. Some deductive systems, of course, are neither simple nor strong. What we value in a deductive system is a properly balanced combination of simplicity and strength -- as much of both as truth and our way of balancing will permit. {% include appendices/ref.html id="lewis1973a" o="n" p="73" %}

Theory choice amounts to selecting the top scorer among the empirically adequate alternatives judged against a set of constraints, principal among which are the criteria of *simplicity* and *strength* from the perspective of the theorizer.[^Bestsystem]

The motivation for this approach to scoreboards is brought out in the account of intentionality generally that Lewis gives in *Radical Interpretation* {% include appendices/ref.html id="lewis1974b" e="." %} For Lewis, the *goal* in theorizing about intentionality is to say how facts about speakers expressed in purely physical terms determine facts about the speakers' attitudes and the meanings of their utterances. The resources available to the theorist in this effort include the whole physical story, past and present, of a speaker's behavior as well as a *basic ideology* of intentional systems, which supplies the theorist with a store of *beliefs* and *desires* driving physically specifiable behavior and a collection of *truth conditions* to be associated with sentences, the principal meaningful elements of language.

The *methodology*[^method] for theory construction using these basic tools is to optimize the theory against a set of constraints specific to the domain of the intentional in addition to the general theoretical criteria. Lewis' prefered constraints stem from "the fundamental principles of our general theory of persons. They tell us how beliefs and desires and meanings are normally related to one another, to behavioral output, and to sensory input" {% include appendices/ref.html id="lewis1974b" p="334" e=":" %}

<!-- Constraints on a theory of meaning -->
{% capture lewisconstraints %}
{% for item in site.data.definitions["constraints on a theory of meaning"] %}
  <p><strong>{{ item.first | capitalize | append: ":&nbsp;" }}</strong><span>{{ item.last }}</span></p>
{% endfor %}
{% endcapture %}
{% include examples/def.html type="def" term="Lewis' constraints on a theory of meaning" defn=lewisconstraints %}

There is no quarantee that a theoretical process carried out along these lines will result in a unique best theory of a speaker's intentional system; it may be that no single theory fits the constraints perfectly, and many may be equally distant from perfection. Additionally, truth conditions almost certainly provide an incomplete reductive base for sentence meaning. Lewis is well aware of these potential indeterminacies, but he wishes to hold his ground against the claim that there could be multiple distinct theories of meaning for a language, all of which perfectly meet the constraints:

> "*Credo*: if ever you prove to me that all the constraints we have yet found could permit two perfect solutions, differing otherwise than in the auxiliary apparatus of **M**, then you will have proved that we have not yet found all the constraints" {% include appendices/ref.html id="lewis1974b" o="" p="343" e="." %}

I think that Lewis' model of linguistic theory, grounded in the best systems account and realized in the conversational scoreboard, is a worthwhile approach. But I contest that we have, in Lewis' explicit proposal, the complete set of constraints to do the job. I don't base this challenge on a claim to have found multiple perfect theories of any speaker's intentional system based on Lewis' constraints. Rather, I do so on the basis of a claim that we have not uncovered the complete basic ideology from which the constraints arise.

I view the development in [Knowledge in the image of inquiry](/chapters/knowledge-in-the-image-of-inquiry.html) as providing an argument for the claim that intentional systems are *collaborative* through and through. As such, there is more to speech behavior than what it reveals about an individual's beliefs and desires. It reveals, also, their status as participants in an extended, distributed process of advancing the inquiry. If the basic ideology, and in turn the constraints, come from our common sense theory of persons, then our theory is incomplete to the extent that it ignores the fact that persons are *social* beings, whose attitudes develop over the course of many collaborative inquiries.

{% assign collabextension = site.data.definitions["collaborative extension of the basic ideology"] %}
{% include examples/def.html type="def" term="Collaborative extension of the basic ideology" defn=collabextension %}

Our common sense theory of persons represents them as social creatures, and provides us with attitudes necessary to capture their collaborative efforts.[^collabattitudes] The collaborative extension forces us to reconsider how acceptance of these attitudes exerts itself within our constraints. It seems to me that at least two of the Lewisian constraints require modification in light of it: *generativity* and *truthfulness*.

## Generativity and usability

In his characterization of the constraints of language theorizing, Lewis presumes a criterion akin to Davidson's {% include appendices/word.html word='learnability' %} thesis, that a theory is out of the running if it cannot be given a finite specification {% include appendices/ref.html id="davidson1967" o="n" e="." %} But this acceptance seems unmotivated given Lewis' characterization of the nature of the project:

> It should be obvious by now that my problem of radical interpretation is not any real-life task of finding out about Karl's beliefs, desires, and meanings. I am not really asking how *we* could determine these facts. Rather: how do *the facts* determine these facts? By what constraints, and to what extent, does the totality of physical facts about Karl determine what he believes, desires, and means? To speak of a mighty knower, who uses his knowledge of these constraints to advance from omniscience about the physical facts **P** to omniscience about the other facts determined thereby, is a way of dramatizing our problem.... The real-life knower has all the problems of our fictitious [omniscient] knower, and more besides: he does not have all of **P** to draw on, and he may be limited in endurance, intelligence, or memory.... But these further obstacles to his investigation are irrelevant to our real topic. {% include appendices/ref.html id="lewis1974b" p="333-4" e="." %}

Presumably, the reason for requiring that a language be at minimum finitely specifiable is that it is something that *people* possess, and people are at best finite, cognitive beings. But nature isn't a cognitive being at all, let alone a finite one. And there is no antecedent reason to think that the physical facts do determine the mental facts in a reductive way.[^bealer] To the extent that something like **Generativity** is a genuine constraint on theorizing about language, it suggests that the nature of the project isn't quite as Lewis characterizes it. It is a project of developing a theory *for* us not just a theory *of* us. And to provide this, we need to be more restrictive than to merely disallow infinitary definitions. We require a *usability* constraint.[^usability] An acceptable theory needn't say what the mechanisms are that carry out the operations of conversational exchange, but the operations ought to be specified in a way that it is plausible to think of human interlocutors making use of them in the course of conversation.[^frameproblem]

While there is a simple, transcendental argument speaking in favor of Davidson's constraint -- human's do possess a theory of language, and as cognitively finite individuals, they do not have infinite space to dedicate to language resources -- the usability constraint is more methodological.[^Bontly] I'll gesture at a motivation for it by way of a digression; specifically, an extension of Lewis' analogy to the score in a baseball game.

## Truthfulness, honesty, and trust

(Millian correction, keep truth active by testing it, correctibles, honesty and trust in correction, Lewis *Language(s)*)

Lewis envisions language use within a community as determined by a set of conventions {% include appendices/ref.html id="lewis1975b" o="" e="." %} In particular, he thinks that language use is governed by dual conventions of *truth* and *trust*, the first of which applies to speakers in the language community, the second to hearers. Speakers agree (and presume others also agree, etc.) to utter only truths to the extent they are able, and hearers agree to take on beliefs as their own in response to speakers' utterances.

The collaborative extension, because it incorporates attitudes developed through collaborative inquiry, and because collaborative inquiry essentially involves a process of speculation and correction ([Knowledge in the image of inquiry, section 2.3](/chapters/knowledge-in-the-image-of-inquiry.html#induction)), implies that the truthfulness convention is incomplete as stated. Speakers cannot be counted on to utter only truths to the extent this is possible. In fact, the success of inquiry demands that they courageously utter what may very well be falsehoods. What hearers can expect of their partners in conversation is that they put forward their contributions with *honesty*, uttering only what they take to provide genuine advancement of the inquiry in accordance with the specified plan.

The demands of honesty allow for uttering non-truths, but it still counts as a convention because it offers a solution to a coordination problem. Only in this case, the participants to the convention bring to bear, in addition to their understanding of the semantic content of utterances, the structure of the plan of inquiry recorded within the current conversational scoreboard. The convention is thus relativized to the inquiry at hand.

The collaborative extension also implies that lingusitic conventions cannot be easily factored on the basis of the role of a participant. It is not merely hearers who must rely on their interlocutors to properly advance the inquiry. Speakers, too, depend upon their interlocutors to provide checks on their speculative contributions. Thus, the contention of *trust* must be expanded to apply to speakers and hearers *mutually* -- hearers in taking on the attitudes required by the proposed advancement of the inquiry and speakers in speculating freely, trusting that hearer's will correct them to the extent they are able.

Language use in a community, I suggest, is governed by the dual conventions of *honesty* and *mutual trust*.

## Anaphora and coherence

(Jamesian striving, coherence, need for propositions, Lewis *ICC*)

To represent as rational is not just to represent as believing truths. For being rational is advancing the inquiry in suitable ways at suitable times, and advancing the inquiry is more than simply relating and accepting truths. Frequently, one advances the inquiry by taking up for consideration known falsehoods. (This is systematic, not an aberation to be swept under the rug.)

In *Index, Context, and Content*, Lewis suggests that the function of a grammar is to characterize a fair amount of our shared linguistic knowledge. But not all of it. There are elements of what we know about using our language in particular contexts that it doesn't deal with. Which ones? "Conversational appropriateness and implicature, disambiguation, taxonomy of speech acts, or what it is about us that makes some grammars rights and others wrong" {% include appendices/ref.html id="lewis1980" o="n" p="80" e="." %} And why not? Because grammar's key role is in imparting information. To do that, I need to say the right thing. The grammar supplies me with semantic values for sentences, which is how I determine what is the right thing to say. To impart information, all I need is that the semantic value get me the truth value of the sentence were I to say it in my current context. A convention of truthfulness and trust (not part of the grammar) will ensure that the message gets properly disambiguated and instilled with the appropriate force.

> The foremost thing we do with words is to impart information, and this is how we do it. Suppose (1) that you do not know whether *A* or *B* or ...; and (2) that I do know; and (3) that I want you to know; and (4) that no extraneous reasons much constrain my choice of words; and (5) that we both know that the conditions (1)-(5) obtain. Then I will be truthful and you will be trusing and thereby you will come to share my knowledge.

But this isn't *all* I want to do with words! I also want to use your knowledge to increase my own. And I want to help you bring up that knowledge even if it may not be at the tip of your mind. That is, I want to engage in an *inquiry* with words. The grammar can help me fulfill this desire as well, but it needs more support than the convention of truthfulness and trust can provide.

> Meaning in natural language manifests itself as the semantic competence of the language user, this competence is demonstrated in the interpretation and production of utterances, and language production and interpretation involve mental representations, which are derived from linguistic input in language interpretation and converted into linguistic output in language production. (Hamm, Kamp, van Lambalgan, pp. 5-6)

Hamm et al. suggest that the representational account of semantics is motivated by a *cognitive perspective* on semantic theory, in which the objective to to model the conceptual framework of language users that allows them to interact linguistically with the world.

> For someone who thinks of meaning along these lines it is tempting to see the formal properties of discourse contexts which DRT identifies as defining the interpretational possibilities for anaphoric pronouns as features of the mental representations which are constructed in the course of interpreting a text or piece of discourse; and this encourages a view of DRSs as models for mental representations, which capture some of the formal properties of those representations in addition to their truth conditional content.

Inquiry is an extended process. Carrying it out fruitfully requires us to maintain a record of what has transpired thus far in the inquiry. We can use this record to refer back to earlier discussion and connect bits of information into an extended web. Through a simple complication of the grammar, we greatly expand our information imparting capabilities. *Anaphora resolution* is one process that fits into an inquiry-extended picture of grammar. Natural language speakers have an ability to use explicit pronouns as well as implicit refering devices to link to previously introduced *discourse referents*. This ability is vital to the project of realizing inquiry in discourse. The grammar should help explain how it is done, but truth determination alone won't carry the load. Anaphora extends beyond linking individuals across sentence boundaries. The information web in a healthy inquiry has temporal ties between events {% include appendices/ref.html id="partee1973" o="n" p="602" e=":" %}

{% include examples/ex.html term="tense" %}

It's quite likely that there is a stove turning off somewhere in my past. But this fact means little to the interpretation of [Tense](#tense) if no such event occured within the time frame it gestures at.

The information web also ties states of affairs together via subordination relations between modalized sentences {% include appendices/ref.html id="stone1999" o="n" e=":" p="2" %}

{% include examples/ex.html term="modality" %}

Anaphora resolution is an important interpretive tool for connecting utterances, but it is not the only one. Language users are also able to suss out conceptual connections between bits of information. Discourses lacking such *coherence* connections can be very difficult, or even impossible to process {% include appendices/ref.html id="kehler2000" o="n" e=":" %}

{% include examples/ex.html term="coherence" %}

In virtue of its role in systematizing language users' shared knowledge about advancing an inquiry, a grammar for a language provides more than just the makings for truth determination.[^compositionality] It also provides the makings for anaphora and coherence relations. A *dynamic* grammar assigns anaphoric connections between sentences, and propositions can be anaphorically connected, as in modal subordination. A *collaborative* grammar assigns coherence connections between utterances.

To the extent that collaboration can be integrated into our constraints on language theorizing, we have reason to look for collaborative structure in the scoreboard representation of conversation. But what do collaborative score markers look like?

### Semantics and pragmatics

Philosophers of language generally divide the project of interpretation into a number of modules, principal among which are the {% include appendices/word.html word='semantic' base='semantics' %} and the {% include appendices/word.html word='pragmatic' base='pragmatics' %} modules. Where to draw the line between semantic and pragmatic effects of utterances, as well as whether we ought to draw any dividing lines at all, is a theoretical issue dependent on the productivity the distinction[^Semprag].

But to a large extent, if an adequate formal representation of an interpretive effect is available, what category it falls in is irrelevant. This is especially so, since there are few instances of an interpretive effect being wholly isolated from other effects of the same utterance. Even certain effects that have often gone under the heading of conventional implicature, which Chris Potts {% include appendices/ref.html id="potts2005" %} has argued is a category of meaning distinct from the semantic domain based on its independence from standardly regarded semantic content, are seen to be at minimum {% include appendices/word.html word='weakly interacting meaning particles' %} (WIMPS) with respect to semantic content. This is evident from crossover effects found with anaphora resolution across appositive lines {% include appendices/ref.html id='anderbois2013' o='n' e="." %}

Scoreboard construction is not so much a project in semantics or pragmatics in particular as a project of representing an individual discursant's model of the conversation. Pre-theoretically, when forming their model of the conversation, discursants can bring to bear their worldly background knowledge and particular extra-lingusitic features of the discourse context in addition to the utterances they hear. The goal of scoreboard construction is to find a structure that provides a theoretically virtuous account of the empirical data. Any distinctions between types of structure the theory imposes should be tested on the basis of their theoretical virtue.

The nature of the empirical data is itself up for debate, but it is widely accepted (and I will presume) that we can take language users' intuitions about {% include appendices/word.html word='truth conditions' %} [cite TC intuitions], {% include appendices/word.html word='anaphoric relations' %} {% include appendices/ref.html id="bittner2011" o="n" %}, and {% include appendices/word.html word='illocutionary force' base='speech act' %} [cite force intuitions] as the data points our theory must account for.

As theoretical posits, various scoreboard constructs will be judged both on empirical adequacy and on theoretical virtue. No addition to the board is warranted unless there is a reliably measurable interpretive effect that it purportedly captures. But in addition to this criterion, consolidated boards whose structure parallels our understanding of linguistic processing ought to be preferred over their empirically adequate but unweildy brethren.[^Morecriteria]

### Language as a best system

There are challenges to the best systems account in application to the governing principles of the physical structure of the world. Primary among these is its reliance on the notion of *simplicity*. Even if we grant as a methodological principle of scientific theorizing that simpler rules are to be preferred, there is no agreed upon criterion for relative simplicity that makes the decision procedure in any way objective. Lewis unabashedly relativized simplicity to the language within which the theorizing takes place, suggesting that simplicity be measured in terms of the length of the basic syntactic structures appearing in the laws. But as Nelson Goodman {% include appendices/ref.html id="goodman1983" o="" %} has taught us, languages can vary drastically in syntactic specification of basic concepts, with no one language claiming pride of place over another. Unless one language can be separated from the rest, as Ted Sider {% include appendices/ref.html id="sider2013" o="" e="," %} has argued is possible the best system account treats status as a law of nature as a dependent upon the theorizer's concept of elegance.

This modicum of *irrealism* inherent in the best system account is a second issue for its application in the realm of physical structure. It is well-accepted that there are limits to what is available empirically to human observers of the world, and some extreme empiricists go so far as to infer that there is nothing to posit beyond the empirically verifiable elements of our scientific models {% include appendices/ref.html id="churchland1982" o="n" e="," %} but it is difficult to shake the idea that there is a physical reality out there that our theoretical efforts attempt to *describe* rather than *determine*.

Despite these concerns in the realm of the physical sciences, the best systems account fares well in application to *linguistic interpretation*.

## General update semantics

{% include appendices/word.html word='Update semantics' %} is a class of theories of conversational structure in which the conversational scoreboard is represented by a set-theoretic structure that we will refer to as the {% include appendices/word.html word='information state.' %} {% include appendices/word.html word='Discourse dynamics' %} is implemented by means of {% include appendices/word.html word='updates' base='update' %}, which are operations on this structure.

Collaborative update semantics builds off of a standard update semantics. Following Sarah Murray {% include appendices/ref.html id="murray2014" %}, information states are *articulated* to account for different types of update that are relevant to discourse dynamics. One element is the {% include appendices/word.html word='common ground,' %} a possibility space represented by a set of possible worlds considered to be ways the world could be according to what the conversational participants mutually take for granted. {% include appendices/word.html word='Informative updates' base='informative update' %} place {% include appendices/word.html word='conditions' base='condition' %} on the common ground. Formally, informative updates function by intersection of the common ground with the {% include appendices/word.html word='content' %} of the utterance from which they stem. Informative updates are used to model the speech act of {% include appendices/word.html word='assertion.' %}

Structuring updates partition the common ground. Formally, they impose relations on the elements of the common ground, thus dividing the possibility space up into regions on the basis of shared characteristics. The speech acts of *question* and *command* are modeled as structuring updates.

There are two ways to accommodate structuring updates within info states. One is to directly impose them upon the common ground. The other is to add them to a specialized set of relations.

Discourse referent updates operate by adding to a set of discourse referents. The dref set is drawn upon for anaphoric reference during the course of conversation. Dref elements can be optionally marked by their ontological type or their order of introduction to account for subtlties in anaphoric reference and for connections between drefs.

In addition, the dref set informs both informative and structuring updates by providing content for the anaphoric pronouns in utterances that convey those updates.

The structure of information states is intended to capture the *dynamic* properties of discourse. But the properties that they capture are dynamic in a particular way. They capture how utterances in discourse get interpreted in light of the previous development of discourse and also how adding an utterance to the discourse representation modifies the representation in distinctive ways. In this way, discourse representations capture the ways in which conversations involve the cooperative building of a structural representation.

But there is a limit to the dynamism the system can represent. Once an utterance is incorporated into the discourse structure --  once, that is, the appropriate pegs are placed in the appropriate slots -- the *identity* of the utterance is destroyed. Utterance interpretation in standard update semantics is *static* in that utterances are interpreted once, in situ, and then absorbed into the representation.

But discourse can also be dynamic in a richer sense. An utterance made in discourse -- *that very* utterance -- can have an import that evolves throughout the discourse. It can serve one interpretive function at the point of introduction, and a different function upon later review. To capture this extra level of dynamism, we need a way to incorporate utterances into the discourse representation without destroying their identity, so that the same utterance can be differently manipulated at different points of the conversation. For this, we need a an expanded, *collaborative* discourse representation structure.

## *Impos*ing and *prop*osing

The distinctive role of assertion is to restrict the common ground to its intersection with the content of the proposition asserted. Accepting this function for assertion, we are left with the question of whether the power of so modifying the common ground is in the hands of the asserter to *impose* the restriction upon the common ground, or if it is the baliwick of her interlocutors to accept and implement the speaker's *proposal*.

In the Stalnakerian model {% include appendices/ref.html id="stalnaker1978" o="" e='.' %} there is no machinery to implement this distinction. All assertoric operations are performed as impositions on the common ground. But certain extensions of the framework have recognized value in the distinction and have integrated elements into the framework to account for it.

In {% include appendices/word.html word="inquisitive semantics" %} {% include appendices/ref.html id="groenendijk2009,westera2012" o="n" e=','%} propositions are represented as sets of sets of possible worlds. Every utterance presents such a proposition, and restriction of the common ground depends on selection of the intersecting set from among the elements of the proposition. The framework thus allows a role the speaker's interlocutors in enacting the assertive function. In the trivial case of a fully *informative* utterance, the proposition contains a single set of worlds. In this case, the selective role is reduced to either accepting or rejecting the assertive proposal.

Sarah Murray's articulated information states {% include appendices/ref.html id="murray2014" %} similarly allows us to distinguish between proposed and imposed changes to the common ground by introducing the notion of *structuring updates* -- updates that ogranize the elements of the common ground without changing its membership. Proposals present this structure, highlighting a subset of the common ground and recommending it for elimination, but the power of implementing its recommendation can be delegated to other conversational participants. Murray's framework allows us to account for different types of content present in a single utterance in terms of the different ways they impact the information state. A principle use of the framework is in distinguishing between *at-issue* and *not-at-issue* content. This is an information packaging distinction. At-issue content is information that is up for discussion; it is proposed and interlocutors are given the opportunity to reject it. Not-at-issue content is backgrounded material that is either presumed or must be acknowledged in order for the at-issue content to make sense in the context. Not-at-issue content is imposed on the common ground, bypassing discussion and directly altering it.

Murray has also used the articulated information state framework to account for the distinctive role of *evidentials* in discourse. But this extension reveals an issue with the assertion as proposal framework. Since assertions don't have any independent impact on the common ground, their function is essentially incomplete. Interpretation must wait until the proposal passes the acceptance phase of the discourse. This is a problem because single utterances can involve coordinated informative and structuring updates. For instance:

{% include examples/ex.html term="sing" %}

The second conjunct of the assertion requires a direct imposition on the common ground, but we are still in limbo after the first conjunct, which is merely proposed.

Both of these proposals add useful nuance to the structure of discourse dynamics. But the ability to accept or reject discourse proposals is a minimal collaborative ability for interlocutors. It lies at one extreme of a specturm of possible collaborative moves.
Full collaboration requires that we imbue our framework of discourse dynamics with a way of accommodating an extended process of input from discourse participants as well as a way of bypassing the need for collaboration in the instance of coordinated structures as in [Sing and dance](#sing).

## Collaborative contributions

In the terminology of Clark and Schlegloff {% include appendices/ref.html id="clark1992" e="," %} a *try-marker* is an refering expression within an utterance that is marked to indicate the speaker's understanding that the hearer may not pick up on the reference. The speaker, not wanting to derail the conversation to conclusively rectify the potential for confusion, offers the reference as a suggestion. She additionally marks the suggestion, usually by means of an upward intonational contour followed by brief pause, to allow the hearer an opportunity to pursue further clarification if such is needed. The try-marker is a text-book example of the preference in successful conversation for minimum effort over assured uptake.

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

Assertion lies at the extreme of two dimensions of commitment: the dimension of accuracy and that of precision.

The accuracy dimension measures the level of commitment to the truth of the uttered content that the speech act carries. Assertion carries full commitment to truth, bullshit carries minimal commitment, and a lie, perhaps, carries negative commitment to truth. Questions and imperatives have no position on this dimension.


How then do we understand the distinctive contribution of conjecture? It may seem that conjecture has the same information state altering role as assertion, and that their difference is simply a matter of the strength of commitment that they carry with them. While assertion commits the individual to the truth of the asserted content very strongly, perhaps requiring that they know the assertion to be true, appropriate conjecture requires merely that the speaker have good reason for thinking the content true.

Whatever the merits of the norm based approach to speech-act individuation, this proposal overlooks the fact that assertion stands on one corner of a two-dimensional spectrum of possible speech-acts. Assertions must be perfectly *accurate* in that they commit the speaker to their truth. They are also perfectly *precise* in that they commit the speaker to the truth of the exact proposition asserted. Conjecture allows the speaker a buffer against the commitment to precision for the potential value of striking on something gold.

Mark Richard {% include appendices/ref.html id="richard2004" o="" %} argues that even contextualists need to incorporate relativist principles in order to accommodate variations in standards across contexts. In so far as collaborative update semantics incorporates the imprecision of conjecture, it supports relativism.

## Elaborations

### Collaboration

In collaborative update semantics, the primary functional unit is the *contribution*. Utterances in discourse can *initiate* a contribution, *complete* a contribution, or initiate a contribution with a *default* completion.

We define three *initiation operators* (each paired with a *completion operator*), which operate in distinctive ways on the *information state* of the discourse.

We elaborate update semantics in two ways to capture collaboration:

+ Sentences express *informational radicals*, which are semantically incomplete objects in the sense of {% include appendices/ref.html id="bach1994" o="n" e="." %}
    + The informational radical represents the informational element upon which collaboration takes place.
    + The parties to the discourse can provide alternative *saturations* of the radical
    + The fact that the radical remains constant throughout the process captures the special coherence of collaborative discourse
+ Focus marking initiates a sandbox winthin which the collaboration can take place, isolated from the rest of the discourse platform.
    + Try-marking is a speaker's way of initiating a sandbox for her own utterance.
    + Contrastive topic is one way of initiating a sandbox to delve into a previous utterance.

### New drefs
The first tool of collaborative update sematnics is the sandbox, a platofrm, isolated from the primary information state, on which the collaborative process takes place. We introduce two discourse referents for manipulating sandboxes.

+ A checkout, of type [information state], which duplicates (in its entirety or in part) the information state for tentative manipulation in the collaborative process.
    + Linked to a focus marker, either a try-marker or a contrastive focus.
+ A merge, of type [information state + message/checksum], which intersects the information state with the sandbox state at the end of collaboration and adds to it a checksum as  way of tracking the changes that were made on the basis of the collaborative process. Useful for restoring past phases of the discourse.
    + Implemented by a sounds-good-marker, an acceptance of the end of collaboration.

### Structuring updates

One of the principal challenges of a set-theoretic model of discourse dynamics is capturing identity across stages of the discourse. Set identity is exhausted by membership, so aside from inclusion and shared membership, there is little that can be said about the relations between two sets. But a discourse can evolve drastically, perhaps to the point that the set representing a contribution at one stage may have very little in common with the set representing the same contribution at a later stage. Still, we may have interpretive reason to identify those sets. The problem is locating the resources to do so.

This issue is particularly acute in the framework of collaborative update semantics, where contributions are themselves taken to be complexes of utterances, each of which operates on a shared platform.

We can use the idea of structuring update and mine the resources of *relational algebra* to obtain the needed cross-utterance identity.

+ Extensional vs. intensional relations
+ 2 operations on tables (join and adjoin)
+ For purposes of tracking


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
+ Propositional structure, but incomplete {% include appendices/ref.html id="bach1994" %}
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

{% include elements/chapterend.html %}

[^Bestsystem]:
    Lewis also adds *fit* as a criterion for theorizing about non-deterministic systems. See {% include appendices/ref.html id="hicks2014" o="n" %} for an amendment of the best system account that incorporates the idea that the conditions of use of a theory may count as a criterion for adequacy of the theory.

[^collabattitudes]:
    I can see at least two ways of incorporating the collaborative extension of the basic ideology. We could add additional attitudes to the set of intentional elements whose content our theory is to specify, which is to say that we treat *conjectures* and *corrections* as independent states of mind. Alternatively, we could reimagine the attitudes we already grant, imbuing them with collaborative features, resulting in, perhaps, *distributed beliefs* and *shared desires*. The choice depends on whether we think of collaboration as built into the content or as a structural feature of the states. I don't see the need to make the choice for the purpose of examining the extension of the basic ideology. As far as I can tell, the consequences for the constraints on radical interpretation are the same.

[^frameproblem]:
    Think here of the challenge in artificial intelligence known as the *frame problem*. The issue is that good at data collection and processing as machines are, they have difficulty using their skills to engage tasks in the real world because there is simply too much data to sift through in order to process all of it before making a choice on how to act. Humans do this quite easily, despite the severe deficiency in our raw data processing ability. Presumably, we succeed on the basis of a set of frames, heuristics, and defaults, which allow us to filter the data, making the processing task much less onerous. Whatever the reductive link between the logical specification of language and its neurological realization may be, it seems evident that its rules must be specified in terms of these sorts of heuristics and defaults simply because it is a quotidian tool.

[^Semprag]:
    See the entries in [That sem/prag anthology].

[^Bontly]:
    Same idea as the simplicity motivation in linguistic theory that {% include appendices/ref.html id="bontly2005" o='n' %} discusses? Something about semantic innocence?

[^Morecriteria]:
    An additional criteria that seem to straddle the line between empirical coverage and theoretical virtue are is the distribution patterns of expressions throughout the language, such as an expression's embedding proclivities or the diversity of linguistic contexts in which it occurs

[^bealer]:
    George Bealer {% include appendices/ref.html id="bealer1997" %} emphasizes the counter-intuitiveness of reductive functionalist accounts in that they require the content of our conscious experiences to be weird realizer properties rather than the normal mental properties that really are their contents.

[^method]:
    Or at least *a* methodology. To fix ideas, I presume as operative Lewis' *Method 3* {% include appendices/ref.html id="lewis1974b" p="342" %} for linguistic theory construction.

[^constitutive]:
    Both constitutive and regulative rules count as rules in this sense as both are generalizations over singular game events. Their different status is a distinction without a difference in our framework. In this sense, they are like the differences between laws and initial conditions for best systems accounts of laws.

[^reflexive]:
    Call the application of metrics in the game evolution *strategies* and the elements of the system applying the strategies *players*.

[^usability]:
    The claim is not that there is a direct correlation of grammatical structure with neuro-psychological structure. Or that a single scoreboard-plus-rulebook perfectly represents what a game player has internalized. But that understanding requires strucutral representation, we hold as determined. And that certain understanding-based capabilities depend on a specific structural representation is something I'm willing to insist on.

[^compositionality]:
    Though we have to be careful. Truth determination can be shown to be compositional. For other grammatical roles, it may be harder to demonstrate this feature. We should be ok with refinement coherence, because we will represent it in terms of focus semantic values, which are compositional.

[^gametheory]:
    Despite termoinological similarities, the classification project taken up in the text is altogether different from that of game theory. My interest is not on how players rationally choose strategies within a well-defined game structure. Instead, I'm interested in the process of defining game structure itself. Game theory is best applied in situations of prescriptive rulebooks, as understood in the main text.

    I attempt to forestall the confusion by shifting focus from *games* themselves to *characterizing descriptions* thereof. Thus, the emphasis is on the theory of a game, which is our actual point of interest.

    It's important not to confuse topics here. It's possible that the language here specified is used by a population, and it's possible that its being so used is a matter of convention. And it's further possible that conventional use is to be explained in terms of game-theoretic solutions to a coordination problem. But all of that is aside from our point here, which is to provide a grammar for a possible language. In particular, it is to provide the interpretational element of that grammar. The assumption in the text is that being a genuine grammar requires a usability constraint, and usability is explicated in terms of concepts of language as a game.
