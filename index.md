---
title: Discourse as collaborative inquiry
subtitle: a dissertation
author: Erik Hoversten
type: home
---

You and I are set to build a stone wall. We have before us a pile of stones of various sizes, as well as mortar and wheel-barrows and other tools necessary for the job. Some of the stones are small enough for a single person to move into position. To productively add these stones to the wall, one of us need only recognize the positioning of previously laid stones and place the new stone next to them in a neat fashion. This requries that we *cooperate* with each other in our placement of smaller stones. But some of the stones are quite large; they require us both to lift in unison and carefully place into position on the wall. To get these stones in place, we must the willing to *collaborate* in our efforts. While placing these larger stones adds complication through the increased demand on coordination, the value of having such a stone in place is potentially great in reducing the overall effort required to bring our wall building task to a close.

In many ways, inquiry is a similar endeavor to wall-building. {% include concept.html word="Information" base='information' %} takes the place of stones as the building blocks participants heft. Utterances take the place of hands and wheelbarrows as the conveyances of the building materials. And the finished wall maps to resolution of whatever {% include concept.html word='issues' base='issue' %} spurred our entering into the inquiry.

Discourse is cooperative in the way that Grice conceives of it in his *Cooperative Principle* {% include ref.html id="grice1989" o="" p="26" %}:
  
> Make your conversational contribution such as is required, at the stage at which it occurs, by the accepted purpose or direction of the talk exchange in which you are engaged.

But interaction in discourse is more integrative than this. Helpful interlocutors also obey what we might call the *Collaborative Principle*:
  
> Make your conversational effort such that, together with your interlocutors' efforts, it advances the inquiry along the accepted purpose or direction of the talk exchange in which you all are engaged.

A complication with the analogy of discourse to other collaborative enterprises is that most collaborative efforts are such that the actors' efforts are performed in concert. But speech actions are, in general, performed serially. Still, we can get around this complication by treating individual utterances as providing essentially incomplete *contribution radicals*, which search out for a pair to complete them. But to make this work, we need two distinctively collaborative framework elements:
  
+ A *staging platform* on which contributions radicals are held as they wait for completion.
+ *Default completions* to account for the fact that completion sometimes requires preliminary interpretation of an initiating contribution radical.

The purpose of this project is to develop and motivate a formal framework of *collaborative discourse interpretation*. To do so, I take a three-pronged approach:
  
[Conceptual]({{ '/chapters/knowledge-in-the-image-of-inquiry.html' | prepend: site.baseurl }}): It is commonly held that knowledge is the end of inquiry, but if we take this connection seriously, there are significant implications for our understanding of the nature of knowledge. I propose to take at face value the idea that knowledge is whatever we get as output in the process of inquiry. Delving into the nature of inquiry reveals that it is a <em>collaborative</em> endeavor, and so then is knowledge. This idea has important consequences for explaining the distinctive value of knowledge over true belief and for the contextualism/relativism debate in epistemology.

[Theoretical]({{ '/chapters/collaborative-update-semantics.html' | prepend: site.baseurl }}): Genuine contributions to discourse change the state of the conversational scoreboard in distinctive ways. Incorporating ideas from version control in computer programming, I develop an update semantics that accommodates collaborative inquiry. In *collaborative update semantics*, contribution operators attach to propositional radicals, and contributions initiated by one utterance may not be completed until a later utterance is added. In particular, conjecture operators function by opening a *sandbox* in which further discourse builds on the conjecture. When all parties are satisfied, the sandbox contents are merged into the original information state, which is additionally marked for the purposes of tracking the changes.

[Practical]({{ '/chapters/dispute-in-discourse.html' | prepend: site.baseurl }}): Disputing an utterance can be an important tool in collaborative inquiry. In this paper, I examine a simple dialogue involving dispute and consider two established proposals for analyzing the semantic and pragmatic import of the utterances it contains. While each provides valuable insight into the interpretation of the discourse, I maintain that each is lacking in a some regard and that collaborative update semantics, supplemented with a semantics for bare plurals, offers an extension that fully accounts for the natural interpretation of the dialogue.
