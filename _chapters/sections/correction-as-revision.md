## Correction as information state revision

The issue raised for the correction-as-revision approach is familiar from the literature on belief revision stemming from the work of Gardenfors (in AGM) -- namely, that there are multiple ways to coherently downdate an information state.

The standard solution in belief revision is to supplement the belief state with an *entrenchment relation*, which serves to rank elements of the state (either sentences for the syntactic model or worlds in the semantic model) in terms of their susceptibility to downdate. This puts constraints on how belief state is revised in response to its falling into incoherence. But crucially, the entrenchment relation does not fix a unique revision strategy.

Similarly, the LDRT approach to correction places constraints on downdate by linking drefs via the conditions they bind. But the constraints need not fix a unique downdate strategy. They do so only incidentally in the case of entity type drefs.

It may be suggested that this is a feature rather than a bug in the LDRT proposal, as it allows for a more open-ended and interactive approach to correction. Different conversational participants' scoreboards can diverge based on their different, equally rational, downdate strategies. And this fact helps explain how corrective discourses occasionally degrade into confusion.

I can allow that such a response could be worked out and that it would have certain merits. But it is not an approach I favor, because I am additionally swayed by conceptual motivations for working out a more natural integration of the components of corrective discourse.

I think that the issue reveals the patchy nature of the dref binding fix. Corrective discourse is central enough to inquiry that it calls for an integrated implementation.

### Application of revision theory to correction

Revision of an information state takes place when a state degrades into incoherence. The primary source of incoherence is an attempt to update with a proposition whose negation is entailed by the state. Revisions can be analyzed into two components: a downdate, in which the problem proposition as well as a subset of its entailments is removed from the information state; and an update, in which the negation of the proposition is added to the state and the state is appropraitely closed.

**First amendment:** The revision procedure must be amended because corrections do not in general force elimination of utterances whole-sail. Instead, utterances are multi-facted, and corrections tend to mar only a single face, allowing others through unchanged.

To account for this, we add information to our state representations not as information full-stop, but indexed with an information type, where information types indicate the manner in which the information is added to the state. We can think of the information state as being divided into layers based on this indexing. Certain information may be present on multiple layers.

But information state coherence is insensiive to indexing. If a proposition is present on one layer while its negation is present only on a distinct layer, the information state is still incoherent. The layers then provide us with an added means of constraining appropriate revision in the face of incoherence. Certain layers can be assumed to trump others, so that the information on one layer is always more entrenched than information on another.

**Second amendment:** But once information is partitioned in this way, the system is exposed to binding concerns. The binding problem, as it has come to be known, was introduced in a famous footnote to Karttunen and Peters' *Conventional Implicature*. In the system expounded in that paper, conventional implicature is set apart as a distinct dimension of content from the standard semantic content derived from the meaning of the words in a sentence and the way they are put together. Cleaving implicature from semantic content allows us to explain a number of interesting features about how conventional implicatures work, but it also makes it more difficult to explain the ways in which elements of semantic content can interact with elements of the implicature. And it is finding such inroads between severed contents that is termed the binding problem.

Because the amended revision approach involves dividing content by way of indexing, we may be concerned that a binding problem will arise here as well. But the system has a built in fix that it acquires from the structure of DRSs. A discourse representation structure is formally a pair of sets. One set is the universe of the DRS; it contains all the abstract discourse referents (of whatever type) that are introduced in the conversation being represented by the DRS. The other is a set of conditions, which place constraints on elements of the universe in the form of properties and relations holding of and among them. In LDRT, while the conditions are indexed by their layer, the drefs are not. Thus, a single dref can be shared by conditions of different layers. 
