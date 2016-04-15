<!-- Grizzly bears -->
{% capture grizzly %}
{% include ex.html type="ex" sent="Bears are dangerous." sub="[Grizzly]<sub>cf</sub> bears are dangerous." term="grizzly bears" %}
{% endcapture %}

<!-- Presidents -->
{% capture presidents %}
{% include ex.html type="ex" term="presidents" sent="<em>?&nbsp;</em>Bill likes to play golf. George hates broccoli." %}
{% endcapture %}

<!-- Druggy bears -->
{% capture druggy %}
{% include ex.html type="ex" term="Druggy bears" sent="Bears are dangerous." sub="<em>?&nbsp;</em>Bears [in a drug-induced stupor]<sub>cf</sub> are dangerous." %}
{% endcapture %}

<!-- Boars -->
{% capture boars %}
{% include ex.html type="ex" term="boars" sent="Bears are dangerous." sub="You mean <em>boars</em> are dangerous." %}
{% endcapture %}

<!-- Teddy bears -->
{% capture teddy %}
{% include ex.html type="ex" sent="Bears are dangerous." sub="What about Teddy bears?|I didn't mean <em>all</em> bears." term="teddy bears"%}
{% endcapture %}

<!-- Keys -->
{% capture keys %}
{% include ex.html type="ex" term="keys" sent="Alex: The keys might be in the drawer." sub="Billy: (<em>Looks in the drawer.</em>) They're not. Why did you say that?|Alex: I didn't say they <em>were</em> in the drawer. I said they <em>might be</em> there -- and they might have been. Sheesh." defn="Obs/Def" %}
{% endcapture %}

<!-- Cookie -->
{% capture cookie %}
{% include ex.html type="ex" sent='"Who ate the last cookie?' sub='"[Caitlin]<sub>f</sub> ate the last cookie.|# Caitlin ate the last [cookie]<sub>f</sub>."' term="cookie" %} 
{% endcapture %}

<!-- Cookie sem -->""
{% capture cookiesem %}
{% include ex.html type="ex" term="Cookie semantic values" sub="{ <em>Albert ate the last cookie</em>, <em>Betsy ate the last cookie</em>, <em>Caitlin ate the last cookie</em>, ... }|{ <em>Caitlin ate the last apple</em>, <em>Caitlin ate the last beet</em>, <em>Caitlin ate the last cookie</em>, ... }" sent="{ <em>Albert ate the last cookie</em>, <em>Betsy ate the last cookie</em>, <em>Caitlin ate the last cookie</em>, ... }" %}
{% endcapture %}

<!-- Picnic -->
{% capture picnic %}
{% include ex.html type="ex" sent='What did people bring to the picinic?' sub='The [children]<sub>cf</sub> brought [unbridled enthusiasm]<sub>f</sub>' term="picnic" %}
{% endcapture %}

<!-- Picnic sem -->
{% capture picnicsem %}
{% capture confocus %}
{% include sem.html term='Picnic<sub>cf</sub>' index="f" %} = { <em>People brought potato salad</em>, <em>People brought frisbees</em>, <em>People brought unbridled enthusiasm</em>, ... }
{% endcapture %}
{% capture focus %}
{% include sem.html term='Picnic<sub>f</sub>' index="f" %} = { <em>Everyone brought unbridled enthusiasm</em>, <em>The Robbins family brought unbridled enthusiasm</em>, <em>The children brought unbridled enthusiasm</em>, ... }
{% endcapture %}
{% include ex.html type="ex" term="picnic alt sets" sent=confocus sub=focus defn="Obs/Def" %}
{% endcapture %}

<!-- Picnic structure -->
{% capture picnicstruc %}
{% include ex.html type="ex" term="Picnic structure" sent="What did people bring to the picnic?" sub="What did the Robbins family bring?|What did the children bring?|What did the francophiles bring?" defn="Obs/Def" %}
{% endcapture %}

<!-- Chew toys -->
{% capture chewtoys %}
{% include ex.html type="ex" sent="What did people bring to the picinic?" sub="The [Robertson's dogs]<sub>cf</sub> brought [their favorite chew toys]<sub>f</sub>." term="chew toys" %}
{% endcapture %}

<!-- Movie -->
{% capture movie %}
{% include ex.html type="ex" term="movie" sent="The movie was funny." sub="The movie wasn't [funny]<sub>f</sub>, it was [hilarious]<sub>f</sub>.|[The]<sub>f</sub> movie wasn't funny, they [all]<sub>f</sub> were.|The [movie]<sub>f</sub> wasn't funny, the [film]<sub>f</sub> was." %}
{% endcapture %}

<!-- Honey -->
{% capture honey %}
{% include ex.html type="ex" term="Honey" sent="If Pooh had eaten less honey, he would have fit through the hole." sub="But if Pooh had eaten less honey and worn his puffy jacket, he would have gotten stuck." defn="Obs/Def" %}
{% endcapture %}

<!-- Mosquitoes -->
{% capture mosquito %}
{% include ex.html type="ex" term="mosquitoes" sent="Mosquitos carry disease." defn="Obs/Def" %}
{% endcapture %}

<!-- Hibernate -->
{% capture hibernate %}
{% include ex.html type="ex" term="hibernation" sent="Bears hibernate." defn="Obs/Def" %}
{% endcapture %}

<!-- Cuddly bears -->
{% capture cuddly %}
{% include ex.html type="ex" term="cuddly bears" sent="Bears are cuddly." defn="Obs/Def" %}
{% endcapture %}

<!-- Polar bears -->
{% capture polar %}
{% include ex.html type="ex" term="Polar bears" sent="I need a kind of bear which is always white (for my drawing of a bear in a snow storm). I'm considering polar bears, grizzly bears, and koala bears. I've seen white examples of each. Do you know whether any of them are consistently white?" sub="[Polar]<sub>f</sub> bears are white." defn="Obs/Def" %}
{% endcapture %}
