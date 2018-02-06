---
title: Pragmatics of plurals and partitions
chapter: Dispute in discourse
---

Formally, the natural inclination to treat sentences involving bare plurals as governed by universal quantifiers goes as such:

<!-- Universal Quantifier -->
{% def Universal quantifier %}
  {{ "quantifiers|universal quantifier|translation" | formalize: "notitle" }}
  {{ "quantifiers|universal quantifier|definition" | formalize: "notitle" }}
{% enddef %}

But this treatment runs into its own sticky situation. Consider:

<!-- Hibernation -->
{% ex Hibernating bears %}
  {{ "hibernate" | example: "sent" }}
{% endex %}

Most English speakers take [Hibernation](#hibernating-bears-ex){: #hibernating-bears-show .tooled} to be true, even knowing that a fair number of bears don't hibernate.[^hibernation] This poses a problem for the strict analysis of bare plurals.

It won't work to loosen the strictness requirement and interpret bare plurals as bound by, say an existential quantifier or one that requires a few witnesses. For that would render true clearly false sentences such as the following:

<!-- Cuddly bears -->
{% ex Cuddly bears %}
  {{ "cuddly" | example: "sent" }}
{% endex %}

The existence of Winnie the Pooh and Paddington Bear don't serve to make [Cuddly bears](#cuddly-bears){: #cuddly-bears-show .tooled} true. The insight from sentences such as [Hibernation](#hibernating-bears-ex){: #hibernating-bears-show .tooled} is not simply that bare plurals carry less than universal force. Instead, the most natural interpretation is that the truth of sentences involving bare plurals is sensitive to the presence of a significant sub-class falling under the plural each member of which verifies the predicate.

One standard approach to formalizing this idea is to posit a *generic* operator that implements a restricted, universal quantification. As in the variably strict approach to counterfactuals, the *generally universal* account of bare plurals uses context to select a preferred class of individuals within the set determined by the subject and requires for truth that this preferred class be included within the predicate class.[^relevantquant]

[^relevantquant]: This proposal is roughly equivalent to the *Relevant Quantification* approach outlined in {% cite pelletierms %}.

<!-- Generally universal quantifier -->
{% def Generic quantifier %}
  {{ "quantifiers|generic quantifier|translation" | formalize: "notitle" }}
  {{ "quantifiers|generic quantifier|definition" | formalize: "notitle" }}
{% enddef %}

It is perfectly possible for context to restrict membership in the preferred class to hibernating bears, thus explaining the truth of [Hibernation](#hibernating-bears-ex){: #hibernating-bears-show .tooled}. Of course, it is also possible for context to select only cuddly bears in the case of [Cuddly bears](#cuddly-bears){: #cuddly-bears-show .tooled}. It is the job of the metasemantics to explain why this selection is far less natural. The generically universal approach thus gets us out of the sticky situation, or at least shifts the extraction duties to pragmatics, which, given the [resilience](#resilience-obs){: #resilience-show .tooled} and [Susceptibility](#susceptibility-obs){: #susceptibility-show .tooled} of discourse involving bare plurals, seems a not inappropriate delegation of responsibilities.

Despite this de-sticking success, I don't think that the standard response is the correct extraction method. We can preserve the strict analysis of bare plurals [by allowing them to interact with the context in a specific way]. In particular, if the bare plural is evaluated against a context that incorporates the plan of inquiry structure of the discourse, then the extraction can be pulled off.

<!-- Structurally universal quantifier -->
{% def Structurally universal quantifier %}
  {{ "quantifiers|structural quantifier" | formalize: "notitle" }}
{% enddef%}

The structural analysis is strict in that it demands inclusion of the entire set determined by the bare plural within the properly partitioned predicate set. This is the complete story as far as the semantic component of the interpretive machinery is concerned. The partitioning of the predicate class is the source of the perceived looseness of bare plurals ([resilience](#resilience-obs){: #resilience-show .tooled}), but the mechanism for leveraging that feature belongs to the pragmatic system, to which we now turn. As with the story about shifty strict counterfactuals, the real work comes in getting clear about how the context evolves in response to bare plural utterances. And it is here that the framework of collaborative update semantics earns its keep.

## Pragmatics of plurals and partitions

I assume that plurals carry a *homogeneity presupposition*, characterized as follows:

<!-- Homogeneity -->
{% def Homogeneity %}
  {{ site.data.definitions.homogeneity.def }}
{% enddef %}

That interpretation of plural *definite* noun phrases is subject to a homogeneity constraint is discussed by Sebastian Lo&#x0308;bner, who notes that:

> "The referent of a definite NP cannot be split in case the predicate holds only for some part of it, but not for the whole. Without any differentiating modification of the predication, the alternative is just that of global truth or global falsity. If it is impossible to apply the predicate or its negation globally it fails to yield a truth-value." {% cite lobner1987 | pages: 185 %}

This is why, in reference to a mixed-gender group of young bears engaged in a wrestling match, (a) in the following seems true while (b) seems neither true nor false:

<!-- Playing bears -->
{% ex Playing bears %}
  {{ "playing" | example: "sent" }}
{% endex %}

That a homogeneity constraint extends to the case of *bare* plurals, has been suggested by Kai von Fintel:[^schwarzs]

> "A speaker who chooses a sentence involving GEN rather than one of the overt quantifiers signals that it is presupposed that the cases in the domain of quantification are uniform with respect to the property attributed by the scope of the quantifier." {% cite vonfintel1997 | pages: 34 %}

[^schwarzs]: See also Roger Schwarzschild's discussion of distributive contexts for plurals. For Schwarzschild, homogeneity is lexically encoded by the distributivity operator as applied to plurals and falls out of his understanding of plurals in terms of quantification over parts of pluralities combined with a four-valued semantics in which presupposition failure is understood as identity between the positive and negative extensions of a sentence {% cite schwarzschild1994 | pages: 222 | noname %}.

That the homogeneity constraint should be understood as a *presupposition* tied to plurals is supported by the fact that it is cancelable.

<!-- Polar bears -->
{% ex Polar bears %}
  {{ "polar" | example: "sent" }}
{% endex %}

The (b) utterance in [Polar bears](#polar){: #polar-bears-show .tooled} (adapted from {% cite vonfintel1997 | pages: 34 %}) doesn't presuppose that Polar bears are uniformly white; any such assumption is explicitly eliminated by the nature of the question in (a). And characterization as a presupposition fits the discourse role of homogeneity. Instead of making a claim of individual membership in a class, homogeneity is a property of a class as a whole. Thus, a claim of homogeneity *tests* a set, passing the whole thing through if the test is met and derailing the conversation if it isn't {% cite veltman1996 %}. That is exactly what presuppositions do, and in our framework, tests are *structuring updates*.

An additional important feature of [Homogeneity](#homogeneity){: #homogeneity-show .tooled} is that it does not represent the subject class as uniform *full-stop*. It is only so *with respect to* the predicate class. What this mandates, then, is that the subject class be fully contained within a single cell of a partition defined over the predicate set.

In the framework of collaborative update semantics, the homogeneity presupposition is captured by the presence of a default, trivial partitioning of the common ground, which is itself catalogued by a relation in i<sub>**R**</sub>. If no such partition is present, it is accommodated. The sentence is then evaluated as a universal quantifier evaluated against this partition as outlined in [Structurally universal quantifier](#structurally-universal-quantifier-def){: #structurally-universal-quantifier-show .tooled}.

But unlike for Gillies' story regarding counterfactuals, which idles if accommodation of the entertainability presupposition fails, the real virtue of the structural universal account of bare plurals shines through when the homogeneity presupposition is challenged, as it is in [Bears](#bears-ex){: #bears-show .tooled}.

### Informal explication

In the framework of collaborative update semantics, the pragmatic process surrounding an utterance of a sentence with a bare plural subject goes, roughly, like this:

The utterance is just like any other in that it initiates a sandbox and presents a proposition for consideration. In this case, the proposition presented is composed of a radical with a default saturation. The plural sentence, as a [correctible](#correction-obs){: #correction-show .tooled}, is essentially incomplete, and must be filled in. The semantics provided above takes bare plural involving sentences to be evaulated against the backdrop of a partition of the domain of individuals. This is what the plural sentence alone lacks, and it is what the homoegeneity presupposition provides. The default saturation is the trivial, homogeneous partition, which divides the domain (relativized to the common ground) into the set of individuals satisfying the plural subject and the set of individuals that fail to.

If the line of inquiry proposed by the initiation is not accepted, then the conversation derails, and the sandbox is tossed out. But assuming the proposal is picked up by the initiator's interlocutors, there are two avenues for continuing the dialogue:

The presupposition is accommodated, in which case the completion accepts the proposed restriction of the common ground. The worlds that do not represent the set of individuals satisfying the subject as included in the positive partition cell determined by the predicate are tossed out. The implicit acceptance of accommodation closes the sandbox and merges the result into the information state.

The presupposition is rejected (while the line of inquiry is still accepted). At this point, an interlocutor has an opportunity to correct the utterance by offering an alternative saturation of the propositional radical.

The presence of contrastive focus in the completion of [Bears](#bears-ex){: #bears-show .tooled} serves to indicate the corrective role of the completion utterance. It signifies a denial of the homogeneity presupposition, but because the presupposition is structurally distinct from the propositional radical, this denial does not derail the inquiry. A substitution for homogeneity can be inserted into the surviving propositional radical. [Coherence](#refinement-obs){: #refinement-show .tooled} is retained.

The substitution is enacted by re-partitioning the domain in a way that carves along the lines of the alternative set determined by focus interpretation. The result is a new presentation of the propositional radical, differently saturated, and the process iterates.

At the close of collaboration on this issue, the resulting sandbox information state is merged into the primary conversational scoreboard and a new issue can be raised.

### The general formal framework

In collaborative update semantics, the primary update units are *discourse-pairs*, which include (at minimum) an *initiation* and a *completion*. To represent the the integrated functioning of two (or more) utterances issued in serial, we introduce the concept of a *conversational sandbox*. Sandboxes are of the same type as information states, and a sandbox is initiated with much of the current information state copied into it. But the sandbox is isolated from the rest of the information state, so that operations performed within it do not infect the broader state. The effect is that sandboxes can function as a collaborative space, allowing interlocutors to try out various contributions and modify them before committing to their result. When collaboration is complete, the sandbox contents are *merged* into the primary information state, and the update is enacted.

The function of an initiation utterance is two-fold: It *checks out* a new sandbox, and it *commits* a proposition to the inquiry. The checkout opens a new sandbox, copying over (relevant) structural elements (common ground, relation sequence, drefs) from the primary information state. The commit presents the proposition by way of a discourse referent update within the sandbox. Some commits don't lend themselves to collaboration; they elicit either acceptance or denial with no room room for further investigation. But speakers can also commit *correctibles*, which are decomposable into an incomplete, *propositional radical* and a *saturation*.

Assuming the correctible inspires a corrective effort by a discourse participant, the continuation overrides the initiation commitment, replacing it with a substitution of the original saturation. This process can iterate until all participants are satisfied with the lastest commit. At this point, a completion utterance implements the latest commit, imposing its update effect upon the sandbox information state. Finally, the updated sandbox contents are *merged* into the primary information state.

<!-- General collaborative update -->
{% def General collaborative update %}
  {{ "pragmatics|collaborative update" | formalize }}
{% enddef %}

### Plurals specific formal story

All contributions to discourse proceed in the manner of the general formalism outlined above. The specifics of the update procedure depend on the nature of the correctible presented in a sandbox.

In the case of the [Bears](#bears-ex){: #bears-show .tooled} dialogue, we treat the evolution of discourse as introducing a series of queries on a *database* and introduce a framework of *relational algebra* to represent the particulars of plural predication.[^maximization]

[^maximization]: Maria Bittner's system of UC<sub>&Omega;</sub>, which builds on the work of van den Berg on plural dynamics, captures many of the same phenomena, though the formulation is couched more centrally in the dynamic semantics tradition. I feel that database theory provides a natural implementation of these ideas. Plus, it strikes me as a potentially fruitful expansion of the update semantics tradition.

#### Basics of relational algebra

A {% gloss database %} is a collection of data structured by a series of {% gloss tables %} that represent interrelations among the points of data. The information contained in a database can be manipulated in a variety of ways principal among which is the {% gloss query %}, which pulls specific information from one or more tables, packaging it into a {% gloss view %}, itself a table in form, but a mere image of the underlying database. Views allow the user to access and make use of data without impacting the underlying structure of the database.

A {% gloss relational algebra %} extends standard set theoretic operations with a set of operations on tables and provides a means of representing manipulations of structured data in a neat way {% cite codd1970 %}. For the purposes of representing the discourse evolution of disputative dialogue involving plural predication, we add a subset of the relational algebra framework to collaborative update. Namely, we co-opt operations of: {% gloss projection %}, {% gloss outer join %}, {% gloss grouping %}, {% gloss counting %}, and {% gloss renaming %}.

#### Application to collaborative update

The initiation utterance of the [Bears](#bears-ex){: #bears-show .tooled} dialogue consists of a propositional radical, a plural predication, saturated by a homogeneity presupposition. The utterance serves to open a sandbox, within which the interpretive system treats the predication as a function taking the tables for subject and predicate as input and outputting their *right outer join*.

The homogeneity presupposition operates on the result of the predication in three stages. First, it implements a structuring update, grouping the table by value of the **sit** attribute. Second, it performs an aggregation and comparisonfunction on the **ent** and **subj** attributes within each group. This consists of counting the number of **ent** of any value, and the number of **subj** of positive value, and comparing them. Groups for for which either the **ent** count equals the **subj** count or the **subj* count is zero pass through; other groups are rejected. The final phase is a restriction, where rejected groups are eliminated from the table.

{% comment %}
{% table Standard plural predication %}
  {{ "Standard plural predication" | popbox: "snippets" }}
{% endtable %}
{% endcomment %}

The use of contrastive focus in the follow up performs three roles. The first two roles pertain to the modification of the subject. First, it introduces the alternative set of the modifier expression. The focus tells us to fill the modifer attribute with values drawn from the alternative set, rather than simple on/off values of an ordinary semantic value. Subject modification is implemented by a function that takes this focus derived modifier table and the unmodified subject table as inputs and outputs their *full outer join*. The full outer join is significant. Since it keeps rows from the modifier table even when there is no shared **ent** in the subject table, as well as vice versa, this is a way for the continuation utterance to genuinely *correct* the initiation. It may add rows to the table for which the original table made no evaluation.

The second role of contrastive focus is to mark the utterance as a continuation, thus linking it to the previous presentation in the sandbox. We represent this by a *refinement*, in which we **project** just the **sit**, **ent**, and **mod** attributes, renaming the **mod** attribute to **subj**. Thus, the continuation is fully integrated.

{% comment %}
{% table Contrastive modification %}
  {{ "Contrastive modification" | popbox: "snippets" }}
{% endtable %}
{% endcomment %}

Once we have the refined subject in place, we can use it as input to the right outer join implemented by the plural predication of the continuation. The final role of contrastive focus is to overwrite the default homogeneity presupposition, indicating the nature of the structuring update it substitutes -- a partition along the lines of the alternative set of the focused element. This is performed by a grouping operation. In standard plural predication, we only needed to group by the **sit** attribute, but this simplification was made possible by the nature of the values in the **subj** attribute. Since being a bear was taken as an on/off property, and the model determines only its positive extension, there was no need to refine our grouping in order to implement the comparison. The situation is more complex, however, in the case of contrastive plural predication. Here, our presupposition demands that dangerousness be uniform across type of bear. This means that we must additionally group by **subj**
values in order to get the appropriate comparison. We should thus view standard plural predication as a degenerative case of homogeneity presupposition, where there is only one value group within the **subj** attribute.

{% comment %}
{% table Corrective update %}{{ "Corrective update" | popbox: "snippets" }}{% endtable %}
{% endcomment %}

The final, presupposition-restricted table is stored in the structuring component **R** of the sandbox information state. And it is this relation against which the semantic value of the contribution will be evaluated.

If the corrective continuation is accepted, and no further development is required, the state of the sandbox is merged into the primary information state. Generally, an acceptance will be effected by a nod of agreement or some other *Sounds good!* token. The merge operation involves updating each component of the primary information state with its cognate component from the sandbox state. The primary common ground is intersected with the sandbox common ground, which, recall, was initially seeded with the worlds from the primary common ground. The sandbox table is appended to the primary database. And any drefs introduced in the course of the sandbox procedure are likewise appended to the dref list of the primary information state. Since the propositional commits introduced in the course of the sandbox procedure have at this point either been incorporated into the sandbox table or have been overwritten, it is assumed that these are destroyed with the closing of the sandbox. However, some record of the fact that the sandbox procedure was carried out is valuable. To record this, the merge operation also adds a *version* token to the primary information state, housed in the **XX** component. This serves as a checksum, to allow interlocutors to test discourse integrity over the course of an extended dialogue, and also as a backup marker, which allows interlocutors to restore the conversation at a previous point if things start to go off the rails.
