<table class='eqn'>{{#each this}}
  <tr>
    <td class='lhs'>
    {{#with lhs}}
      {{#if eqn}}
        {{> equation eqn}}
      {{else if fxn}}
        {{> (fxn.name)}}
      {{else if symbol}}
        {{> (symbol)}}
      {{else}}
        {{this}}
      {{/if}}
    {{/with}}
    </td>
    <td class='conn'>{{conn}}</td>
    <td class='rhs'>
    {{#with rhs}}
      {{#if eqn}}
        {{> equation eqn}}
      {{else if fxn}}
        {{> (fxn.name)}}
      {{else if symbol}}
        {{> (symbol)}}
      {{else}}
        {{this}}
      {{/if}}
    {{/with}}
    </td>
  </tr>
{{/each}}
</table>
