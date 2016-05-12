{{#if name}}
  <tr class="title">
    <th colspan="3">{{name}}</th>
  </tr>
{{/if}}

{{#with body}}
  {{> main}}
{{/with}}
{{#with sub}}
  {{> main class="parts"}}
{{/with}}

{{#if eqn}}
  {{> equation eqn}}
{{else if fxn}}
  {{#with fxn}}
    {{> (name)}}
  {{/with}}
{{else}}
  <tr class="categorical">
    <td colspan="3">{{this}}</td>
  </tr>
{{/if}}
