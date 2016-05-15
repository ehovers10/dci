---
title: Substance template
---

## Template structure

This liquid template generates markup for substances. A **substance** is a set of **molecules**, which are themselves composed of **atoms**. Molecules are always named, and atoms are optionally so.  Every molecule contains one or more atoms of two varieties: **anions** and **cation**. A cation is a (perhaps singleton) set of **categoricals**, while an anion is a (perhaps singleton) set of complex objects. Anions can contain molecules, in which case, they call the molecule building operation from within them. Alternatively, anions are composed of **quarks**, each of which is named and comes with a set of **arguments**. The name picks out the relevant quark from the user defined list, and the arguments are used to build the quark. Arguments can be categoricals, or they can themselves contain quarks. In the latter case, they call the quark building operation from within them.

## Data structure

The data referenced by the substance template is contained in a YAML file.

<pre>
- moleculeName:
  - [atomName:]
    - [categorical]
    - [moleculeName:]
    - [fxn:]
      - name: quarkName
      - arg:
        - argName: categorical/fxn
</pre>

## CSS structure
