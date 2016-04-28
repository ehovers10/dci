---
title: Formalism

sections:
  - file: formalism/types.md
    name: Types
  - file: formalism/semstruc.md
    name: Semantic structure
  - file: formalism/pragstruc.md
    name: Pragmatic structure
  - file: formalism/semrules.md
    name: Semantic rules
  - file: formalism/pragrules.md
    name: Discourse dynamics
  - file: formalism/translations.md
    name: English to **CU** translations
---

{% assign rel = '<sup>[is],g,&#x1d4dc;</sup>' %}
{% assign type = '<sub>&alpha;</sub>' %}

This appendix presents the formal system of *Collaborative update semantics* (**CU**). **CU** is built upon a typed, model-theoretic semantics. It is augmented, for the purposes of formalizing discourse dynamics, with a conversational scoreboard modeled on DRT {% include appendices/ref.html id="kamp1981" o="n" %} and articulated along the lines of {% include appendices/ref.html id="murray2014" o="n" e="." %} 

{% for sect in page.sections %}
+ [{{ sect.name }}](#{{ sect.name | slugify }}){% endfor %}
{: .toc}

{% for sect in page.sections %}
{% assign link = sect(0) | appden: '.md' | prepend: 'formalism/' %}
## {{ sect.name }} 
{: #{{ sect.name | slugify }} }

{% include_relative {{ sect.file }} %}
{% endfor %}

## References

{% include page-elements/reflist.html %}

***
{: style="border-bottom:1px solid #aaa;margin:1em;"}
