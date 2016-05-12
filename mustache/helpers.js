$(document).ready(function(){

// symbols

Handlebars.registerPartial('dref',
  "<span><span>&#x3008;</span><span class='var'>dref</span><span>&#x3009;</span></span>"
);
Handlebars.registerPartial('sand',
  "<span><span>&#x3008;</span><span class='var'>sand</span><span>&#x3009;</span></span>"
);
Handlebars.registerPartial('rec',
  "<span><span>&#x3008;</span><span class='var'>rec</span><span>&#x3009;</span></span>"
);
Handlebars.registerPartial('uinf',
  "<span><span>&#x27e6;&nbsp;</span><span class='var'>U</span><sup>inf</sup><span>&nbsp;&#x27e7;</span></span>"
);

// functions

Handlebars.registerPartial('semwrap','{{#semwrap}}{{/semwrap}}');
Handlebars.registerPartial('seqwrap','{{#seqwrap}}{{/seqwrap}}');
Handlebars.registerPartial('upwrap','{{#upwrap}}{{/upwrap}}');
Handlebars.registerPartial('drswrap','{{#drswrap}}{{/drswrap}}');

Handlebars.registerHelper('semwrap', function() {
  var before = "",
      open = "&#x27e6;",
      inside = this.inside,
      close = "&#x27e7;",
      after =  this.outside;

  return new Handlebars.SafeString(
    before + open + inside + close + after
  );
});

Handlebars.registerHelper('upwrap', function() {
  var before = "<span class='ldrt'><span class='state'>" + this.before + "</span>",
      open = "<span class='drs left top bottom'></span>",
      inside = "<span class='condition'>" + this.update + "</span>",
      close = "<span class='drs right top bottom'></span>",
      after =  "</span>";

  return new Handlebars.SafeString(
    before + open + inside + close + after
  );
});

Handlebars.registerHelper('seqwrap', function() {
  var before = "",
      open = "&#x27e6;",
      inside = this.inside,
      close = "&#x27e7;",
      after =  this.outside;

  return new Handlebars.SafeString(
    before + open + inside + close + after
  );
});

Handlebars.registerHelper('drswrap', function() {
  var before = "",
      open = "",
      insidea = this.drs,
      insideb = this.conditions,
      close = "",
      after =  "";

  return new Handlebars.SafeString(
    before + open + inside + close + after
  );
});

  var source = $("#formalism-template").html();
  var template = Handlebars.compile(source);
  Handlebars.registerPartial('main',$('#main-partial').html());
  Handlebars.registerPartial('equation',$('#equation-partial').html());

  var context = {"name":"drs","body":{"eqn":{"lhs":{"eqn":{"lhs":"&phi;","conn":"=","rhs":{"fxn":{"name":"drswrap","arg":{"dref":"&phi;<sup>d</sup>","conditions":"&phi;<sup>c</sup>"}}}}},"conn":"is","rhs":"a discourse representation structure (DRS)"}},"sub":[{"name":"drefs","eqn":{"lhs":"&phi;<sup>d</sup>","conn":"is","rhs":"a sequence of drefs introduced in the discourse"}},{"name":"conditions","eqn":{"lhs":"&phi;<sup>c</sup>","conn":"is","rhs":"a sequence of conditions, imposing constraints on the model against which sentences are evaluated"}}]};
  template({"name":"drs","body":{"eqn":{"lhs":{"eqn":{"lhs":"&phi;","conn":"=","rhs":{"fxn":{"name":"drswrap","arg":{"dref":"&phi;<sup>d</sup>","conditions":"&phi;<sup>c</sup>"}}}}},"conn":"is","rhs":"a discourse representation structure (DRS)"}},"sub":[{"name":"drefs","eqn":{"lhs":"&phi;<sup>d</sup>","conn":"is","rhs":"a sequence of drefs introduced in the discourse"}},{"name":"conditions","eqn":{"lhs":"&phi;<sup>c</sup>","conn":"is","rhs":"a sequence of conditions, imposing constraints on the model against which sentences are evaluated"}}]});
});
