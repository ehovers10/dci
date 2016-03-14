**Relational algebra**

[Resource notes](http://www.databasteknik.se/webbkursen/relalg-lecture/index.html)

+ Drefs as header, cg forms set of tuples (represents collaboration and links between drefs)
+ The reason for relativizing predicate to the relation set is...

A relation is a set of tuples. A header specifies the identity of the *attributes*, and the body consists of the set of possible groupings of values for the attributes. We alternately refer to a relation as a **table**. 

+ Projection (&pi;)

> Make an optionally resricted relation accessible for operation.

+ Selection (&sigma;)

> Return a portion of a relation, column restricted by attribute identity and row restricted by constraint on values.

+ Cartesian product (x)

> Combines each row in table 1 with each row in table 2. Adds new attributes, and multiplies rows for new values.

+ Join (inner)

> Table combination that returns only rows that agree on the shared attributes of the two tables. This is a *natural* join. Optional: specify equivalence of distinct attributes

+ Rename

> To deal with joining of tables with conceptually distinct but identically named attributes. Prefix attribute name with its associated table (Table.attr).

+ Aggregate functions

> Aggregate attribute values from a table, optionally grouped by value of a different attribute.

    + Sum
    + Count
    + Avg
    + Min
    + Max
    
+ Hierarchies

> Characterize interrelations of attributes within a single table. What is the value of one attribute when two other attributes are identified. Amounts to renaming the table twice over and joining it to itself with supplied attribute identification.

+ Recursive closure

> Union of two tables. Not well defined in conventional relational algebra. Cf. *transitive closure*

+ Outer join

 > Asymmetrical join. Keeps all rows from primary table, supplying **null** values for attributes missing from the secondary table.
 
+ Outer union

> Unites two partially union compatible tables. If they share an attribute value, the tuples for that value are merged and null values are added for non-common values of that attribute.

+ Division

> ?

+ Update

> Provide a new value for a relation. R += R Union N. R is the result of adding all rows from N to R.
