---
title: Collaborative update
---

We start with a basic update semantics, in which the conversational scoreboard is represented by a set-theoretic structure (the info state), and discourse dynamics is implemented by means of operations on this structure (updates).

Following Murray (2012), info states are articulated to account for different types of update that are relevant to discourse dynamics. Informative updates place conditions on the common ground, a possibility space represented by a set of possible worlds considered to be ways the world could be according to the conversational participants. Formally, informative updates function by intersection of the common ground with the content of the utterance from which they stem. Informative updates are used to model the speech act of *assertion*.

Structuring updates partition the common ground. Formally, they impose relations on the elements of the common ground, thus dividing the possibility space up into regions on the basis of shared characteristics. The speech acts of *question* and *command* are modeled as structuring updates.

There are two ways to accommodate structuring updates within info states. One is to directly impose them upon the common ground. The other is to add them to a specialized set of relations.

Discourse referent updates operate by adding to a set of discourse referents. The dref set is drawn upon for anaphoric reference during the course of conversation. Dref elements can be optionally marked by their ontological type or their order of introduction to account for subtlties in anaphoric reference and for connections between drefs.

In addition, the dref set informs both informative and structuring updates by providing content for the anaphoric pronouns in utterances that convey those updates.

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
