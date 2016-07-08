$(document).ready(function() {

  var context = {
  "body": {
    "body": false,
    "cond": false,
    "eqn": {
      "conn": "is",
      "lhs": {
        "cat": false,
        "eqn": {
          "conn": "=",
          "lhs": {
            "cat": "φ",
            "eqn": false,
            "fxn": false
          },
          "rhs": {
            "cat": false,
            "eqn": false,
            "fxn": {
              "arg": {
                "conditions": "φ<sup>c</sup>",
                "dref": "φ<sup>d</sup>"
              },
              "name": "drswrap"
            }
          }
        },
        "fxn": false
      },
      "rhs": {
        "cat": "a discourse representation structure (DRS)",
        "eqn": false,
        "fxn": false
      }
    },
    "name": false,
    "sub": false
  },
  "cat": false,
  "cond": false,
  "eqn": false,
  "fxn": false,
  "name": "drs",
  "sub": [
    {
      "body": false,
      "cat": false,
      "cond": false,
      "eqn": {
        "conn": "is",
        "lhs": {
          "cat": "φ<sup>d</sup>",
          "eqn": false,
          "fxn": false
        },
        "rhs": {
          "cat": "a sequence of drefs introduced in the discourse",
          "eqn": false,
          "fxn": false
        }
      },
      "fxn": false,
      "name": "drefs",
      "sub": false
    },
    {
      "body": false,
      "cat": false,
      "cond": false,
      "eqn": {
        "conn": "is",
        "lhs": {
          "cat": "φ<sup>c</sup>",
          "eqn": false,
          "fxn": false
        },
        "rhs": {
          "cat": "a sequence of conditions, imposing constraints on the model against which sentences are evaluated",
          "eqn": false,
          "fxn": false
        }
      },
      "fxn": false,
      "name": "conditions",
      "sub": false
    }
  ]
};

  var formmain = "{{#name}} <tr class='title'> <th colspan='3'>{{name}}</th> </tr> {{/name}}{{#body}} {{> main}} {{/body}} {{#sub}} {{> main}} {{/sub}}{{#eqn}} {{> equation}} {{/eqn}} {{#fxn}} {{name}} {{/fxn}} {{#cat}} <tr class='categorical'> <td colspan='3'>{{cat}}</td> </tr> {{/cat}}";
  var formeqn = "<tr> <td class='lhs'> {{#lhs}} {{#eqn}} <tr><td colspan='3'><table class='eqn'> {{> equation}} </td></tr></table> {{/eqn}} {{#fxn}} <tr><td>{{name}}</td></tr> {{/fxn}} {{#cat}} <tr class='categorical'> <td colspan='3'>{{cat}}</td> </tr> {{/cat}} {{/lhs}} </td> <td class='conn'>{{conn}}</td> <td class='rhs'> {{#rhs}} {{#eqn}} <tr><td colspan='3'><table class='eqn'> {{> equation}} </td></tr></table> {{/eqn}} {{#fxn}} <tr><td>{{.}}</td></tr> {{/fxn}} {{#cat}} <tr class='categorical'> <td colspan='3'>{{.}}</td> </tr> {{/cat}} {{/rhs}} </td> </tr>";

  var template = $('#form-base').html();
  Mustache.parse(template);
  var rendered = Mustache.render(template,context,{"main": formmain,"equation": formeqn});
  $('#form-table').html(rendered);

});
