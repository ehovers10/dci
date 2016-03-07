---
title: Discourse as collaborative inquiry
subtitle: a dissertation
author: Erik Hoversten
type: home
---

You and I are set to build a stone wall. We have before us a pile of stones of various sizes, as well as mortar and wheel-barrows and other tools necessary for the job. Some of the stones are small enough for a single person to move into position. To productively add these stones to the wall, one of us need only recognize the positioning of previously laid stones and place the new stone next to them in a neat fashion. This requries that we *cooperate* with each other in our placement of smaller stones. But some of the stones are quite large; they require us both to lift in unison and carefully place into position on the wall. To get these stones in place, we must the willing to *collaborate* in our efforts. While placing these larger stones adds complication through the increased demand on coordination, the value of having such a stone in place is potentially great in reducing the overall effort required to bring our wall building task to a close.

In many ways, inquiry is a similar endeavor to wall-building. {% include concept.html word="Information" base='information' %} takes the place of stones as the building blocks participants heft. Utterances take the place of hands and wheelbarrows as the conveyances of the building materials. And the finished wall maps to resolution of whatever {% include concept.html word='issues' base='issue' %} spurred our entering into the inquiry.

I think that conversation commonly realizes a collaborative inquiry, in the sense that successful contribution to the discourse requires the efforts of multiple parties working in concert, not just serially. It is the goal of this project to both motivate this idea and provide a model for how it is implemented. 

The principle departure point for the discussion is the speech act of {% include concept.html word='conjecture.' base='conjecture' %} In the course of conversation, individuals will ocassionally put forward information for which they do not possess conclusive evidence. Sometimes, the basis for such a maneuver is laziness, deceit, or obstinance. But often, this kind of move is just what the conversation needs to move forward. For instance, in brainstorming sessions, the scientific context of discovery, or tip-of-the-tongue style paralysis, discurrsants set aside the restriction that all contributions be considered to be accurate in favor of entering into the {% include concept.html word='conversational record' base='common ground' %} something that the parties can use as a jumping off point. In these situations, speculative informational profferments perform an important role in advancing the inquiry. 

A conjecture needs to be vetted, and the canonical response to a conjecture is a move that provides this -- a {% include concept.html word="correction." %} Corrections can take many forms, but they normally involve two parts, a *denial* of some portion of the information previously put forward and a *substitution* for the denied information. The conjecture lays a rough foundation, and the correction builds upon it.

The dual conversational moves of conjecture and correction are what I call a {% include concept.html word='discourse pair.' %} The key precept of *collaborative* {% include concept.html word='discourse dynamics' %} is that discourse pairs are the basic units by which {% include concept.html word="contributions" base="contribution" %} to the inquiry are made. That is, we do not represent the conjecturer and corrector as each providing indvidually complete and jointly cooperative contributions to the discourse. Instead, the conjecture/correction pair together contribute to the inquiry; the parts are individually inert.

The project of using the notion of discourse pairs to develop and motivate a theory of collaborative discourse dynamics has 3 parts: an exploration of the conceptual ties between inquiry and knowledge, a development of a theoretical framework couched in the tradition of update semantics, and an application of the framework to some practical issues in the pragmatics of disagreement. It begins with a project overview: 

{% assign chlist = site.chapters | where: "type","chapter" | sort: "level" %}
{% for chapter in chlist %}
+ [{{ chapter.title }}]({{ chapter.url | prepend: site.baseurl }}){% endfor %}
