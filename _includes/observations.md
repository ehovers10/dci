<!-- Refinement -->
{% capture refinement %}
The [Bears](#bears) dialogue is *coherent*, exhibiting a relation of *refinement* between the first and second utternace.
{% endcapture %}

<!-- Correction -->
{% capture correction %}
The completion phase of the [Bears](#bears) discourse serves to {% include concept.html word="correct" base="correction" e="" %} the initiation phase, a *correctible* utterance.
{% endcapture %}

<!-- Resiliance -->
{% capture resiliance %}
The [Bears](#bears) initiation is *resiliant*. In certain contexts, it is appropriate for the utterer of a correctible to refrain from retracting it in the face of a challenge.
{% endcapture %}

<!-- Productivity -->
{% capture productivity %}
The [Bears](#bears) completion is *productive*. It does not merely refer back to the initiation but extends the discourse in a distinctive way.
{% endcapture %}

<!-- Susceptibility -->
{% capture susceptibility %}
The [Bears](#bears) initiation is susceptible to challenge. In certain contexts, it is appropriate for an initiator's interlocutors to challenge their attempted contribution.
{% endcapture %}

<!-- All observations -->
{% capture allobs %}
{% capture all %}
**Refinement:** {{ refinement }}

**Correction:** {{ correction }}

**Resiliance:** {{ resiliance }}

**Productivity:** {{ productivity }}

**Susceptibility:** {{ susceptibility }}
{% endcapture %}
{% include ex.html type="def" term="All observations" sent="Example" sub="Sub-example" defn=all %}
{% endcapture %}
