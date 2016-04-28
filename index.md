---
title: Discourse as collaborative inquiry
subtitle: a dissertation
author: Erik Hoversten
type: home
---

You and I are set to build a stone wall. We have before us a pile of stones of various sizes, as well as mortar and wheelbarrows and other tools necessary for the job. Some of the stones are small enough for a single person to move into position. To productively add these stones to the wall, one of us need only recognize the positioning of previously laid stones and place the new stone next to them in a neat fashion. This requries that we *cooperate* with each other in our placement of smaller stones. 

But some of the stones are quite large; they require both of us to lift in unison and carefully place them into position on the wall. To get these stones in place, we must be willing to *collaborate* in our efforts. While placing these larger stones adds complication through the increased demand on coordination, the value of having such a stone in place is potentially great in reducing the overall effort required to bring our wall building task to a close.

In many ways, inquiry is a similar endeavor to wall-building. {% include appendices/concept.html word="Information" base='information' %} takes the place of stones as the building blocks participants heft. Utterances take the place of hands and wheelbarrows as the conveyances of the building materials. And the finished wall maps to resolution of whatever {% include appendices/concept.html word='issues' base='issue' %} spurred our entering into the inquiry.

Discourse is a realization of joint inquiry, and as such, it is cooperative in the way that Paul Grice {% include appendices/ref.html id="grice1989" o="" p="26" %} conceives of it. Honestly engaged discourse participants seek to follow the *Cooperative principle*:
  
<!-- Cooperative principle -->
{% assign grice = site.data.definitions["cooperative principle"].def %}
{% include examples/ex.html type="def" term="Cooperative principle" sent="Example" sub="Sub-example" defn=grice %}

But interaction in discourse is more integrative than this. Helpful interlocutors work together, jointly hefting larger bits of information, with the goal of bringing the particular issue of the inquiry to a close. They obey what we might call the *Collaborative Principle*:

<!-- Collaborative principle -->
{% assign collab = site.data.definitions["collaborative principle"].def %}
{% include examples/ex.html type="def" term="Collaborative principle" sent="Example" sub="Sub-example" defn=collab %}

The purpose of the project contained in these pages is to develop and motivate a formal framework of *collaborative discourse interpretation*. To do so, I take a three-pronged approach:
  
[Conceptual]({{ '/chapters/knowledge-in-the-image-of-inquiry.html' | prepend: site.baseurl }}): It is commonly held that knowledge is the end of inquiry, but if we take this connection seriously, there are significant implications for our understanding of the nature of knowledge. I propose to take at face value the idea that knowledge is whatever we get as output in the process of inquiry. Delving into the nature of inquiry reveals that it is a <em>collaborative</em> endeavor, and so then is knowledge. This idea has important consequences for explaining the distinctive value of knowledge over true belief and for the contextualism/relativism debate in epistemology.

[Theoretical]({{ '/chapters/collaborative-update-semantics.html' | prepend: site.baseurl }}): Genuine contributions to discourse change the state of the conversational scoreboard in distinctive ways. Incorporating ideas from version control in computer programming, I develop an update semantics that accommodates collaborative inquiry. In *collaborative update semantics*, contribution operators attach to propositional radicals, making it possible that contributions initiated by one utterance may not be completed until a later utterance is added. In particular, conjecture operators function by opening a *sandbox* in which further discourse builds on the conjecture. When all parties are satisfied, the sandbox contents are merged into the original information state, which is additionally marked for the purposes of tracking the changes.

[Practical]({{ '/chapters/dispute-in-discourse.html' | prepend: site.baseurl }}): Disputing an utterance can be an important tool in collaborative inquiry. In this paper, I examine a simple dialogue involving dispute and consider two established proposals for analyzing the semantic and pragmatic import of the utterances it contains. While each provides valuable insight into the interpretation of the discourse, I maintain that each is lacking in a some regard and that collaborative update semantics, supplemented with a semantics for bare plurals, offers an extension that fully accounts for the natural interpretation of the dialogue.
