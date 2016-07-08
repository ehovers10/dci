var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['mintable'] = template({"1":function(container,depth0,helpers,partials,data) {
    var helper;

  return "  <thead>\n    <tr class=\"title\">\n      <th colspan=\"3\">"
    + container.escapeExpression(((helper = (helper = helpers.name || (depth0 != null ? depth0.name : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : {},{"name":"name","hash":{},"data":data}) : helper)))
    + "</th>\n    </tr>\n  </thead>\n";
},"3":function(container,depth0,helpers,partials,data) {
    var helper;

  return "    "
    + container.escapeExpression(((helper = (helper = helpers.eqn || (depth0 != null ? depth0.eqn : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : {},{"name":"eqn","hash":{},"data":data}) : helper)))
    + "\n";
},"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data,blockParams,depths) {
    var stack1;

  return "<div>\n<table class=\"element\">\n"
    + ((stack1 = helpers["if"].call(depth0 != null ? depth0 : {},(depth0 != null ? depth0.name : depth0),{"name":"if","hash":{},"fn":container.program(1, data, 0, blockParams, depths),"inverse":container.noop,"data":data})) != null ? stack1 : "")
    + "  <tbody>\n    <tr>\n      <td>"
    + ((stack1 = container.invokePartial(partials.main,(depth0 != null ? depth0.body : depth0),{"name":"main","data":data,"helpers":helpers,"partials":partials,"decorators":container.decorators})) != null ? stack1 : "")
    + "</td>\n      <td>Go!</td>\n      <td>Run!</td>\n    </tr>\n  </tbody>\n</table>\n</div>\n";
},"main_d":  function(fn, props, container, depth0, data, blockParams, depths) {

  var decorators = container.decorators;

  fn = decorators.inline(fn,props,container,{"name":"inline","hash":{},"fn":container.program(3, data, 0, blockParams, depths),"inverse":container.noop,"args":["main"],"data":data}) || fn;
  return fn;
  }

,"useDecorators":true,"usePartial":true,"useData":true,"useDepths":true});
