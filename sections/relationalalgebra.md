---
---

**Relational algebra**

[Resource 1](http://www.databasteknik.se/webbkursen/relalg-lecture/index.html)
[Resource 2](http://db.grussell.org/section010.html)
[Wikipedia](https://en.wikipedia.org/wiki/Relational_algebra)


+ Drefs as header, cg forms set of tuples (represents collaboration and links between drefs)
+ The reason for relativizing predicate to the relation set is...

A relation is a set of tuples. A header specifies the identity of the *attributes*, and the body consists of the set of possible groupings of values for the attributes. We alternately refer to a relation as a **table**. 

## Projection (&pi;)

> Make an optionally resricted relation accessible for operation.

## Selection (&sigma;)

> Return a portion of a relation, column restricted by attribute identity and row restricted by constraint on values.

## Rename

> To deal with joining of tables with conceptually distinct but identically named attributes. Prefix attribute name with its associated table (Table.attr).

## Update

> Provide a new value for a relation. R += R Union N. R is the result of adding all rows from N to R.

* * * * *

## Set union

+ Relations must be *union-compatible*: they have the same set of attributes
    + They have the same number of attributes, and the domain of each attribute in column order is the same in both relations
+ To form the union of two relations is to create a table with all rows from each relation.
+ The union of two relations is a relation that includes all the tuples that are either in R or in S or in both R and S. Duplicates are eliminated.

## Cartesian product (x)

> Combines each row in table 1 with each row in table 2. Adds new attributes, and multiplies rows for new values.

* * * * *

## Join (inner)

> Table combination that returns only rows that agree on the shared attributes of the two tables. This is a *natural* join. Optional: specify equivalence of distinct attributes

+ Natural join: the union of tuples r and s (everything in one or the other) so long as there is some overlap (something is in both)

> R &#x2a1d; S = { r &cap; s \| r &isin; R &and; s &isin; S &and; Fun(r &cap; s) }

+ &theta;-join: the union of tuples r and s so long as, for a specified comparison, the comparison holds between value for some attribute in r and the value of some attribute in s.
    + Only defined if the headers are disjoint

+ Semi-join: preserves a tuple from the primary relation so long as there is a tuple in the secondary relation that matches its values for their common attributes.
    + Not a union operation. Does not expand header
    + Alternatively, the *projection* of the R attribute names in R &#x2a1d; S
    
> R *semijoin* S = { t \| t &isin; R &and; &exist;s &isin; S( Fun( t &cap; s ) ) }

+ Antijoin: The complement tuples to the semi-join. Only those tuples from R that do not have a match in S.

+ Division: Restriction of R tuples to attributes unique to R such that their combinations with tuples in S are present in R.
  + A header reducing operation
  + S header is a subset of R header
  
> R &divide; S = { t[a<sub>1</sub>,...,a<sub>n</sub>] \| t &isin; R &and; &forall;s &isin; S( ( t[a<sub>1</sub>,...,a<sub>n</sub>] &cap; s ) &isin; R ) }

## Aggregate functions

> Aggregate attribute values from a table, optionally grouped by value of a different attribute.

    + Sum
    + Count
    + Avg
    + Min
    + Max
    
## Hierarchies

> Characterize interrelations of attributes within a single table. What is the value of one attribute when two other attributes are identified. Amounts to renaming the table twice over and joining it to itself with supplied attribute identification.

## Recursive closure

> Union of two tables. Not well defined in conventional relational algebra. Cf. *transitive closure*

## Outer join

 > Keeps all tuples, supplying **null** values for attributes missing from the the other relation in that tuple.
 
 > Contains all join-relevant tuples, *plus* extended unmatched tuples with fill values for each attribute of the other operand.
 
## Outer union

> Unites two partially union compatible tables. If they share an attribute value, the tuples for that value are merged and null values are added for non-common values of that attribute.
