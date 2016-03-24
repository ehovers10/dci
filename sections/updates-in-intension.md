---
---

### Problem 

Not every relation in intension corresponds to a relation in extension.

Stanley and Szabo: the way quantifiers interact with counterfactuals suggests that we should take contexts to contribute properties for domain restriction as opposed to sets. This is because evaluation of the counterfactual may require taking different domains for different possible worlds.

Relations, understood as structure imposed on the common ground, are purely extensional, and provide no way of representing evolution of the context through discourse. Once the relation is imposed, information is lost.

(Within a sandbox, commits are joined to a shared table. This represents the collaborative nature of the sandbox situation.)

(Upon merge, the sandbox table is adjoined to the info. state relation list. This represents the evolutionary nature of the inquiry.)

### Solution

You can get a relation-in-intension from an open sentence, but as a purely semantic object, there is no specification of a relation independent of a domain. But, we can have a meta-domain of which the common ground is a subset and have relations-in-intension defined in terms of that.

An alternative solution is to find a way of linking sets across possibilities (trans-world identity of sets). The relational model specifies tables, which perform this exact task.

Define a *table* as a relation with attributes drawn from the available drefs and rows the values for these drefs determined by each element of the common ground.

+ Continuations join tables
    + This represents the corrective (and refinement) nature of continuations.
    + Consider using *bags* for joins that expand the relation.
+ A table is a radical *grouped by* the saturation
    + That is, the radical determines the attributes (subject and predicate)
    + The saturation places a constraint on the attribute values and groups them according to the partition it defines
+ The initiation provides the domain, continutations involve an asymmetric join, preferring the relation determined by the intitiation
+ Compare Basoveanu and Bittner (following Vandenberg?) on maximality 
+ We implement a &theta;-join, with the &theta; relation determined by the saturation. 
    + It determines a cronstraint for accepting tuples in the join.
+ Is a join really a structuring update? It seems to eliminate possibilities.
    + But no elimination from the common ground. All that is eliminated is *pairs* of worlds. 
    + That is, we refine the relation.

+ Hash table, Associative array
    + key determined by lexical element "bears"
    + index determined by world (world buckets)
    + hash function can pick out individual bears, but we mostly just need the entire set
    + for each bucket, *bears* returns subset of *dangerous* return or *bears* return intersect *dangerous* return is null.
    
+ || bears<sub>s(et)</sub> ||<sup>**M**</sup> can be seen as generating a table, bucketed by D<sub>s</sub> and indexed by D<sub>e</sub>. 
    + Each bucket gives us the set of bears at that world. 
    + Specific bears are the values of each index in a bucket.
    + || &alpha; || is a *key*, but it is not a hash key, because the hash function does not return a unique value.
+ The relation just gives us world-element-value tuples, but the bucketing allows for plural relations.
    + domain: world-element
    + range: value

1. Predication initiates *natural join*, expanding table attributes and limiting to world and entity values
2. Presupposition performs query on the table
3. Semantics evaluated relative to the query
    + Return set of worlds with + dangerous
4. Continuation performs *outer join*, expanding table attributes and adding null values if no witenss for an attribute
    + Left outer join preserves initiation tuples based on relation from...

+ || bears<sub>s(et)</sub> are dangerous<sub>s(et)</sub>||<sup>**M**</sup> first performs a join.
    + Presupposition next performs a Query: 
    + *dangerous* = +, 
    + if *bears* is uniform,
    + then keep *s*
    + The presupposition is thus acting as a structuring and eliminating update in one.
    + The set of *s* such that, for all *e* such that *dangerous*(s)(e), *bears*(s)(e) or for all *e* such that *dangerous*(s)(e), not-*bears*(s)(e).
    + Projection -> take only certain attributes
    + Select -> take only certain tuples

 Bears | Dangerous | Problem
:-----:|:---------:|:-------:
  +    |  +        |  
  +    |  +        |  
  +    |  -        |  x
  -    |  +        |  
  
+ Projection: *contracts* header
+ Select: *restricts* body
+ Join: *extends* header, *restricts* body by value identity on shared attributes
+ &theta;-join: requries *disjoint* headers, *extends* header, *restricts* body by value relation across an attribute from each table
+ Semi-join: does not extend header, restricts body of *perfered* table by value identity of shared attributes
    + Same as taking natural join and *projecting* the attributes of the preferred table
+ Division: *contracts* header, *restricts* body by value identity across *all* tuples of shared attributes
    + Maximal over denominator table
+ Outer-join: *extends* header, *expands* body, filling empty attribute values


### Context evolution

*bears* and *dangerous* are predicates of type s(et), which can be represented by tables with headers *situation*, *entity*, *trope* (*quality*) and body populated by **M**. 

Plural predication is a *concatenation* function, which is represented by a *natural join* of the predicate tables. THe resulting table has header *situation*, *entity*, *trope*<sub>a</sub>, *trope*<sub>a</sub>. The tuple list is contracted (culled) to situation, entity pairs that the model represents as having both properties.

The plural sentence expresses a propositional radical (*C*), which is an incomplete discourse object of type *s*. When uttered, it is supplied with a *homogeneity* presupposition (*k*) to the effect that either all *bears* are dangerous *or* no *bears* are. 
  
The presupposition tells us how to *query* the the table for *C*. The form of the presupposition is a disjunction, so we will have a disjunctive query. As a global presupposition, it queries the entirety of an attribute relative to another attribute. 

This presupposition is integrated in a two step manner:
  
> Return all tuples with *situation* value *s* if COUNT(*entity*(\*),*s*) = COUNT(*trope*<sub>b</sub>(+),*s*). The model, represented in the table, ensures that this give us only situation/entity pairs that represent danger. 
>    + This query effectively forms a parition over *dangerous* and selects a preferred cell.
>    + Acutally, I think it works as a right outer join, since I have introduced anti-extensions and null values.
> 
>Return all tuples with *situation* value *s* if COUNT(*entity*(\*),*s*) = COUNT(*trope*<sub>a</sub>(+),*s*) or COUNT(*entity*(\*),*s*) = 0. The concatenation join ensures alignment between *bears* and *dangerous*. 
>    + This query returns only the situations uniform across the *bears* quality relative to the prefered cell of the *dangerous* partition.[^divide]

This leaves us with the set of situations that are uniform across the *bears* dimension with respect to a positive value for the *dangerous* dimension. And it is this table that is submitted to the semantic machinery to evaluate *Bears are dangerous*.

All of this takes place within a sandbox, and the utterance has been recorded as a dref, which allows us to rebuild the table from the Model at any point. No information has been lost.

Continuations similarly present a propositional dref, but they do not establish a new table. Instead, they are integrated into the existing sandbox table in the following manner:
  
> 

### Capturing desiderata

+ Refinement/coherence
    + An update-join of the coninutation table with the initiation table
    + A new attribute linked to subject with more nuanced values
    + Replaces subject values
+ Correction
    + An outer-join of the continuation table to the initiation table
    + This adds dummy values to missing elements, which allows for the possibility of a content change between initiation and continuation
+ Resiliance
    + Presentation of utterance as dref
    + This allows us to rebuild the table from the initial utterance, so the original speaker can retrench
    + This is represented by the fact that sandbox operations are performed on *views*, which allow us to select information from the database and operate on it without changing the database structure.
+ Presupposition
    + Global: table generation
    + Homogeneity: aggregation function
    + Update: contraction from join operation
    + Table division?
+ Semantic value
    + Evaluated relative to some table
    + Relativism on the subset relation?
    + The predicate partitioned by the table with subject contained in the approp. cell?

### Translations

+ Contrastive focus
    + Provides the alternative set, which serves to populate the rows of the subject modifier attribute
    + It is an outer join update, which overrides the subject values and replaces them with the refined ones. (Positive values only?)
    + Replaces the homogeneity presupposition for the completion join, which restricts the body by uniformity over the resulting alternative-set partition
+ Subject modifer
    + Provides an outer/update join
    + Adds a new attribute, which is linked to the subject attrib somehow.
    + It serves as a refinement in virtue of its value-set, populated from the domain, in conjunction with its alternative set.
    + It is then joined to the original table by an outer join to accommodate potential correction.
+ Plural predication
    + A presupposition restricted inner join

### A potential distinction to develop

There is a difference between a correction that challenges the *accuracy* of a bare plural sentence and one that merely challenges its *precision*. For an inaccurate bare plural assertion, the subject set is not included in the predicate set. But in an imprecise bare plural assertion, the subject set is so included, its just that asserting this doesn't provide as informative an update as is warranted. 

It seems that the correction in *Grizzly bears* is both. It challenges precision *as a way to* challenge accuracy. The claim went too far and overgeneralized to the point of falsity.

It's possible that these update types are not mutually exclusive. It's also possible that theories that differ only in notational ways may assign updates to different types. For instance, one may take an update to directly alter an element of the common ground to reflect a relation among *its* elements, in which case we would consider it to be a structuring update. Or, one could add a specification of a domain and range as a new element of the state of information, thereby providing all the tools necessary for constructing the relation among elements of another element of the state of information. In this case, the update appears to be of the dref variety. In effect, the first option replaces one set of entities with a *relation-in-extension* among the same entities, and the second option adds a *relation-in-intension* to the information state. I don't think there is reason to bicker over the details here so long as both options equally account for intuitive interpretations of the linguistic item under consideration. 

However, there may be empirical reasons to choose one over the other. If the update functions, for instance, by replacing an unordered set by an ordered one, then we may take certain information to be lost; namely, that the state once represented the set as unordered. But if the relation-in-intension is added to the information state, then we have the tools to construct the relation-in-extension without directly doctoring the set to which it applies. It may be that adequte interpretation of certain extended discourses requires the presence of the original, undoctored set in addition to the relation.

One way in which a similar sort of difference has practical import is in the interaction of intensional particles. For instance, in providing their theory of quantifier domain restriction, Stanley and Szabo suggest that we ought to treat the entities contributed by context as properties rather than sets. The reason is that quantifiers can be embedded under counterfactuals, and adequately accounting for these complex sentences requires having access to different domain restrictions relative to different worlds of evaluation. If context provides a property, it can provide this; if it offers only a set, then it cannot.

Intensional updates matter for purposes of tracking changes to the information state across the course of a conversation. If we think of semantics as truly dynamic, then extensional updates will not suffice. We can bring this point out be considering the possibility of implementing a downdate operation on information states.

### Notes

[^divide]: In effect, we are *dividing* *C* by *k*. First, we *project* the *dangerous* attribute of *C* and *divide* *C* by that. This leaves us with a table similar to the original *bears* table but with a body contracted by ...

[^extensions]: We should not assume that if a model doesn't assign an entity to a predicate extension, it assigns it to its anti-extension. The model is silent on that fact, which could mean that it just hasn't come up, and in a refined model, it would be positively assigned. This means that we need a 3-valued system. And outer joins handily give us null values, which fits in with this idea.
