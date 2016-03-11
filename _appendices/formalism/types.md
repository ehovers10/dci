<!-- Types -->
{% capture typedef %}
The set **T** of types is the smallest set containing:
  
+ [*s*][sit]
+ [*e*][indiv]
+ [*t*][tv]
+ [&chi;][sat]
+ [&rho;][rec]
+ [&sigma;][info]
+ (&alpha;&beta;) \| &alpha;,&beta; &isin; **T**
{: .setlist}

A set **dref** of highlighted *discourse referent* types is defined as:
  
+ *s*
+ [&pi;][reln] = (*st*)*t*
+ &chi;
+ [&xi;][rad] = &chi;(*st*)
+ &rho;
{: .setlist}

[sit]: # "Situations"
{: onclick="return false;"} 
[indiv]: # "Individuals"
{: onclick="return false;"}
[tv]: # "Truth values"
{: onclick="return false;"}
[info]: # "Conversational scoreboards"
{: onclick="return false;"}
[sat]: # "Propositional completions"
{: onclick="return false;"}
[rec]: # "Discourse change records"
{: onclick="return false;"}
[reln]: # "Partitions of the common ground"
{: onclick="return false;"}
[rad]: # "Propositional radicals"
{: onclick="return false;"}

{% endcapture %}
{% include ex.html type="def" term="Types" defn=typedef %}
