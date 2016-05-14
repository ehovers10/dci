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

// partials

Handlebars.registerPartial('main',
  "{{#if name}}<tr class='title'><th colspan='3'>{{name}}</th></tr>{{/if}}{{#with body}}{{> main}}{{/with}}{{#with sub}}{{> main class='parts'}}{{/with}}{{#if eqn}}{{> equation eqn}}{{else if fxn}}{{#with fxn}}{{> (name)}}{{/with}}{{else}}<tr class='categorical'><td colspan='3'>{{this}}</td></tr>{{/if}}");
Handlebars.registerPartial('equation',
  "<table class='eqn'>{{#each this}}<tr><td class='lhs'>{{#with lhs}}{{#if eqn}}{{> equation eqn}}{{else if fxn}}{{> (fxn.name)}}{{else if symbol}}{{> (symbol)}}{{else}}{{this}}{{/if}}{{/with}}</td><td class='conn'>{{conn}}</td><td class='rhs'>{{#with rhs}}{{#if eqn}}{{> equation eqn}}{{else if fxn}}{{> (fxn.name)}}{{else if symbol}}{{> (symbol)}}{{else}}{{this}}{{/if}}{{/with}}</td></tr>{{/each}}</table>");
