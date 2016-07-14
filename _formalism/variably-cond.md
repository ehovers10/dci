---
title: "Variably strict conditional"
translation:
  - fxn: eqn
    arg:
      lhs: A
      conn: "<span style='letter-spacing:-4px;'>&#x25a1;&rarr;</span>"
      rhs: B
definition:
  -
    - "A,B: <span class='type'>st</span>"
    - "&delta;(i): <span class='type'>st</span> &rarr; <span class='type'>st</span> a selection function determined by context <span class='var'>i</span>"
  - fxn: eqn
    arg:
      lhs: "A<sub>pref</sub>"
      conn: =
      rhs: "&delta;(i)(A)"
  - fxn: eqn
    arg:
      lhs:
        fxn: eqn
        arg:
          lhs: A
          conn: "<span style='letter-spacing:-4px;'>&#x25a1;&rarr;</span>"
          rhs: B
      conn: =
      rhs:
        - fxn: eqn
          arg:
            lhs: "1"
            conn: if
            rhs: "&#x27e6;&nbsp;A<sub>pref</sub>&nbsp;&#x27e7;<sup>i</sup>&nbsp;&sube;&nbsp;&#x27e6;&nbsp;B&nbsp;&#x27e7;<sup>i</sup>"
        - fxn: eqn
          arg:
            lhs: "0"
            conn: otherwise
            rhs: "&nbsp;"
---

Look over there
