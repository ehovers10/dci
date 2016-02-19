---
title: Collaborative update semantics
level: 3
type: chapter
---

## Constructing a conversational scoreboard

David Lewis' {% include ref.html id='lewis1979f' %} conversational {% include concept.html word='scoreboard' %} has been incredibly fruitful as a tool in understanding the interpretive effects of utterances in conversation. Many contemporary theoris of the semantico-pragmatic impact of utterances invoke the scoreboard model, with their differences being primarily in regards to the number, function, and arrangement of the various lights and placards that fill the recording surface.

The scoreboard is the logical platform on which the conversation is built. It serves as a record of the contributions that have been made to the conversation, and it dictates both whether an utterance is deemed to provide an acceptable contribution to the conversation and how acceptable utterances are interpreted. A crucial feature of the scoreboard it is not merely a list of unstructured information; the information is formatted in such a way to maximize its robustness and simplicity as an interpretive tool. As a first pass, we can think of the scoreboard as field of slots with participants to the conversation wielding a set of pegs. There is a many-to-one relationship between pegs and slots, but certain pegs can only fit in certain slots. The pegs represent the inquiry specific content of utterances, while the slots are features of conversation generally, determined by the nature of the inquiry that it implements.

Philosophers of language generally divides the project of interpretation into a number of modules, principal among which are the {% include concept.html word='semantic' base='semantics' %} and the {% include concept.html word='pragmatic' base='pragmatics' %} modules. Where to draw the line between semantic and pragmatic effects of utterances, as well as whether we ought to draw any dividing lines at all, is a theoretical issue dependent on the productivity the distinction[^Sem/prag]. 

But to a large extent, if an adequate formal representation of an interpretive effect is available, what category it falls in is irrelevant. This is especially so, since there are few instances of an interpretive effect being wholly isolated from other effects of the same utterance. Even certain effects that have often gone under the heading of conventional implicature, which Chris Potts {% include ref.html id="potts2005" %} has argued is a category of meaning distinct from the semantic domain based on its independence from standardly regarded semantic content, are seen to be at minimum {% include concept.html word='weakly interacting meaning particles' %} (WIMPS) with respect to semantic content. This is evident from crossover effects found with anaphora resolution across appositive lines {% include ref.html id='anderbois2013' o='n' e="." %}

[^Sem/prag]: See the entries in [That sem/prag anthology].

Scoreboard construction is not so much a project in semantics or pragmatics in particular as a project of representing an individual discursant's model of the conversation. Pre-theoretically, when forming their model of the conversation, discursants can bring to bear their worldly background knowledge and particular extra-lingusitic features of the discourse context in addition to the utterances they hear. The goal of scoreboard construction is to find a structure that provides a theoretically virtuous account of the empirical data. Any distinctions between types of structure the theory imposes should be tested on the basis of their theoretical virtue.

The nature of the empirical data is itself up for debate, but it is widely accepted (and I will presume) that we can take language users' intuitions about {% include concept.html word='truth conditions' %} [cite TC intuitions], {% include concept.html word='anaphoric relations' %} {% include ref.html id="bittner2011" o="n" %}, and {% include concept.html word='illocutionary force' base='speech act' %} [cite force intuitions] as the data points our theory must account for. 

In addition, I take it as a precondition on the adequacy of a linguistic theory that it be implementable by individuals in the course of conversation. This criterion represents a departure from Lewis' picture of the project. Lewis thinks of semantic theory in terms of best systems, for which the sole criteria for theorizing is that the theory be empirically adequate and optimize *simplicity* and *strength* from the perspective of the theorizer.[^Bestsystem] But we aren't just interested in language from a third-party prespective. We think of linguistic agents as *possessing* a theory of interpretation, and *making use of* that theory in the process of discourse. This first-personal perpsective ought to place constraints on what we take to be adequate accounts of the interpretive framework. 

[^Bestsystem]: Lewis also adds *fit* as a criterion for theorizing about non-deterministic systems. See {% include ref.html id="hicks2014" o="n" %} for an amendment of the best system account that incorporates the idea that the conditions of use of a theory may count as a criterion for adequacy of the theory. 

This additional criterion, call it a *usability constraint*, whether we think of it as an empirical constraint or a theoretical precondition, is similar in spirit to Davidson's {% include concept.html word='learnability' %} criterion, which holds that a theory of interpretation is inadequate if it presumes infinite knowledge for anyone who possessed it. While there is a nice transcendental deduction speaking in favor of Davidson's constraint -- human's do possess a theory of language, and as cognitively finite individuals, they do not have infinite space to dedicate to language resources -- the usability constraint is more methodological.[^Bontly]

[^Bontly]: Same idea as the simplicity motivation in linguistic theory that {% include ref.html id="bontly2005" o='n' %} discusses? Something about semantic innocence?

As theoretical posits, various scoreboard constructs will be judged both on empirical adequacy and on theoretical virtue. No addition to the board is warranted unless there is a reliably measurable interpretive effect that it purportedly captures. But in addition to this criterion, consolidated boards whose structure parallels our understanding of linguistic processing ought to be preferred over their empirically adequate but unweildy brethren.[^Morecriteria]

[^Morecriteria]: An additional criteria that seem to straddle the line between empirical coverage and theoretical virtue are is the distribution patterns of expressions throughout the language, such as an expression's embedding proclivities or the diversity of linguistic contexts in which it occurs

## Update in general

{% include concept.html word='Update semantics' %} is a class of theories of conversational structure in which the conversational scoreboard is represented by a set-theoretic structure that we will refer to as the {% include concept.html word='information state.' %} {% include concept.html word='Discourse dynamics' %} is implemented by means of {% include concept.html word='updates' base='update' %}, which are operations on this structure.

Collaborative update semantics builds off of a standard update semantics. Following Sarah Murray {% include ref.html id="murray2014" %}, information states are *articulated* to account for different types of update that are relevant to discourse dynamics. One element is the {% include concept.html word='common ground,' %} a possibility space represented by a set of possible worlds considered to be ways the world could be according to what the conversational participants mutually take for granted. {% include concept.html word='Informative updates' base='informative update' %} place {% include concept.html word='conditions' base='condition' %} on the common ground. Formally, informative updates function by intersection of the common ground with the {% include concept.html word='content' %} of the utterance from which they stem. Informative updates are used to model the speech act of {% include concept.html word='assertion.' %}

Structuring updates partition the common ground. Formally, they impose relations on the elements of the common ground, thus dividing the possibility space up into regions on the basis of shared characteristics. The speech acts of *question* and *command* are modeled as structuring updates.

There are two ways to accommodate structuring updates within info states. One is to directly impose them upon the common ground. The other is to add them to a specialized set of relations.

Discourse referent updates operate by adding to a set of discourse referents. The dref set is drawn upon for anaphoric reference during the course of conversation. Dref elements can be optionally marked by their ontological type or their order of introduction to account for subtlties in anaphoric reference and for connections between drefs.

In addition, the dref set informs both informative and structuring updates by providing content for the anaphoric pronouns in utterances that convey those updates.


## Collaboration in discourse dynamics

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

## Versioning

A preference for belief in the face of uncertainty is motivated in part by the fact that not every choice is a matter of life or death.  It is further supported by the fact that inquiries are packaged with corrective feedback mechanisms.  An important such mechanism is the build and test update procedure that inquiry exhibits. Inquiries are cummulatively built in a step by step process. One contributor to the inquiry adds a proposal to the mutual inquiry workspace (akin to the sandbox in comupter program development jargon), at which point it can be played around with by all members of the inquiry before being ultimately accepted or rejected. Thinking of inquiry as involving separate scoreboards and a shared sandbox in addition to the long term storage of the shared scoreboard allows us to capture the more subtle process of inquiry development and update.  It also allows us to incorporate a type of file versioning common to the collaborative computer programming community.  When contributions are in the working memory of the sandbox, they demand little long term cognitive resources.  Anaphoric relations do not span long temporal distances, and the commitments to the consequences of posits within the sandbox are limited. But once tests of the contribution have run their course, the output is entered into longer term storage, and entry into this level of the inquiry record carries stiffer commitments.  Of course, even here the vetting process is fallible, and we may enter falsehoods into the inquiry record. It is further possible that these falsehoods only raise problems at some distance from their original entry into the record. But inquirers have the resources to correct for these failed entries when they are detected.  To explain this capacity, it is helpful to draw an analogy to another tool of the computer program development community, that of file versioning. When one is working on a file for which there are multiple collaborators, it is helpful to have one's own copy, on which changes can be made.  Then the team needs a common file, into which they can enter their changes.  To ensure that conflicting changes do not corrupt the file, we incorporate a system of file versioning, in which each amendment to the file is marked to indicate important facts about the amendments such as the content, time, and author of the amendments. Then in addition to the continuously amended file, we store also this versioning data.  This supplements  the inquiry with a map of its history.  One of the great benefits of this addition is that it allows us to restore the inquiry at any point if it starts to run off the rails.  If a false entry into the record only later reveals itself to be problematic, the inquiry need not be derailed entirely because we can simply revert back to a point in the inquiry prior to the entry of that falsehood using our version history. Inquiries can withstand failures.

These corrective mechanisms are an important reason that efficiency often demands that we make speculative additions to the common ground as opposed to waiting until we can obtain certainty that the addition is true (or otherwise appropriate). But the success of this procedure depends highly on a shared understanding of each party's role in the inquiry. An individual can only feel comfortable in proposing a speculative addition to the common ground if they believe that their collaborators will correct their contribution to the best of their ability.  And this requires interlocutors to be more than passive recipients of information.  They must use openings in the conversation to voice disapproval or uncertainty in addition to registering understanding and acceptance of what has been presented.

Disagreement is the tool by which interlocutors can check each other's flights of fancy.  And, I maintain, it is a tool we both know how to wield, and are prepared to let others weild against us.  The primary role of joint inquiry is to expedite what would be an extremely tedious task if attempted alone.  Even alone, the task can be sped up via judicious application of speculative intellectual leaps, though the risk involved cannot be wholly eliminated.  The collaborative facet of joint inquiry provides extra motivation for assuming the risk -- the cooperative interlocutor, to the extent she is able, will pull you back from the ledge by voicing her disagreement. 

### Types of versioning

File versioning differs from backup in that backup works on a timed basis, versioning is event (change) triggered. Backups are usually system wide, versioning is per file. Backups are usually stored on a different drive, versions are local.

File versioning differs from *journaling* in that journaling records changes and requires acceptance before the file is updated, versioning stores multiple updated files.

## Relations in intension

Not every relation in intension corresponds to a relation in extension.

Stanley and Szabo: the way quantifiers interact with counterfactuals suggests that we should take contexts to contribute properties for domain restriction as opposed to sets. This is because evaluation of the counterfactual may require taking different domains for different possible worlds.

You can get a relation-in-intension from an open sentence, but as a purely semantic object, there is no specification of a relation independent of a domain. But, we can have a meta-domain of which the common ground is a subset and have relations-in-intension defined in terms of that.

It's possible that these update types are not mutually exclusive. It's also possible that theories that differ only in notational ways may assign updates to different types. For instance, one may take an update to directly alter an element of the common ground to reflect a relation among *its* elements, in which case we would consider it to be a structuring update. Or, one could add a specification of a domain and range as a new element of the state of information, thereby providing all the tools necessary for constructing the relation among elements of another element of the state of information. In this case, the update appears to be of the dref variety. In effect, the first option replaces one set of entities with a *relation-in-extension* among the same entities, and the second option adds a *relation-in-intension* to the information state. I don't think there is reason to bicker over the details here so long as both options equally account for intuitive interpretations of the linguistic item under consideration. 

However, there may be empirical reasons to choose one over the other. If the update functions, for instance, by replacing an unordered set by an ordered one, then we may take certain information to be lost; namely, that the state once represented the set as unordered. But if the relation-in-intension is added to the information state, then we have the tools to construct the relation-in-extension without directly doctoring the set to which it applies. It may be that adequte interpretation of certain extended discourses requires the presence of the original, undoctored set in addition to the relation.

One way in which a similar sort of difference has practical import is in the interaction of intensional particles. For instance, in providing their theory of quantifier domain restriction, Stanley and Szabo suggest that we ought to treat the entities contributed by context as properties rather than sets. The reason is that quantifiers can be embedded under counterfactuals, and adequately accounting for these complex sentences requires having access to different domain restrictions relative to different worlds of evaluation. If context provides a property, it can provide this; if it offers only a set, then it cannot.

Intensional updates matter for purposes of tracking changes to the information state across the course of a conversation. If we think of semantics as truly dynamic, then extensional updates will not suffice. We can bring this point out be considering the possibility of implementing a downdate operation on information states.

## The formal semantics

## References

{% include reflist.html %}

***
{: style="border-bottom:1px solid #aaa;margin:1em;"}
