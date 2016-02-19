---
title: Discourse as collaborative inquiry
subtitle: a dissertation in semantico-pragmatic theory
author: Erik Hoversten
type: home
---

You and I are set to build a stone wall. We have before us a pile of stones of various sizes, as well as mortar and wheel-barrows and other tools necessary for the job. Some of the stones are small enough for a single person to move into position. To productively add these stones to the wall, one of us need only recognize the positioning of previously laid stones and place the new stone next to them in a neat fashion. This requries that we *cooperate* with each other in our placement of smaller stones. But some of the stones are quite large; they require us both to lift in unison and carefully place into position on the wall. To get these stones in place, we must the willing to *collaborate* in our efforts. While placing these larger stones adds complication through the increased demand on coordination, the value of having such a stone in place is potentially great in minimizing the overall effort required to bring our wall building task to a close.

In many ways, inquiry is a similar endeavor to wall-building. {% include concept.html word="Information" base='information' %} takes the place of stones as the building blocks participants collectively heft, and utterances take the place of hands and wheelbarrows as the conveyances of the building materials. If all goes well, our analogy maps the finished wall to resolution of whatever {% include concept.html word='issues' base='issue' %} spurred our entering into the inquiry.

I think that conversation commonly realizes a collaborative inquiry, in the sense that successful contribution to the discourse requires the efforts of multiple parties working in concert, not just serially. It is the goal of this project to both motivate this idea and provide a model for how it is implemented. 

The principle departure point for the discussion is the speech act of {% include concept.html word='conjecture.' base='conjecture' %} In the course of conversation, individuals will ocassionally put forward information for which they do not possess conclusive evidence. Sometimes, the basis for such a maneuver is laziness, deceit, or obstinance. But often, this kind of move is just what the conversation needs to move forward. For instance, in brainstorming sessions, the scientific context of discovery, or tip-of-the-tongue style paralysis, discurrsants set aside the restriction that all contributions be considered to be accurate in favor of entering into the {% include concept.html word='conversational record' base='common ground' %} something that the parties can use as a jumping off point. In these situations, speculative informational profferments form an important part in advancing the inquiry. 

{% assign chlist = site.chapters | where: "type","chapter" | sort: "level" %}
{% for chapter in chlist %}
+ [{{ chapter.title }}]({{ chapter.url | prepend: site.baseurl }}){% endfor %}
