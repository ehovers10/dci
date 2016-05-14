var semwrap = function() {
  var before = "",
      open = "&#x27e6;",
      inside = this.inside,
      close = "&#x27e7;",
      after =  this.outside;

  return before + open + inside + close + after
}

var upwrap = function() {
  var before = "<span class='ldrt'><span class='state'>" + this.before + "</span>",
      open = "<span class='drs left top bottom'></span>",
      inside = "<span class='condition'>" + this.update + "</span>",
      close = "<span class='drs right top bottom'></span>",
      after =  "</span>";

  return before + open + inside + close + after
}

var seqwrap = function() {
  var before = "",
      open = "&#x27e6;",
      inside = this.inside,
      close = "&#x27e7;",
      after =  this.outside;

  return before + open + inside + close + after
}

var drswrap = function() {
  var before = "",
      open = "",
      insidea = this.drs,
      insideb = this.conditions,
      close = "",
      after =  "";

  return before + open + inside + close + after
}
