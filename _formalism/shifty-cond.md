---
title: "Shifty strict conditional"
translation:
  fxn: eqn
  arg:
    lhs: A
    conn: "&#x297d;<sub>s</sub>"
    rhs: B
definition:
  -
    - "i<sub>s</sub>: <span class='type'>st</span>"
    - "A,B: <span class='type'>st</span>"
    - "*&delta;(i): <span class='type'>st</span> &rarr; <span class='type'>st</span> a selection function determined by context <span class='var'>i</span>"
  - fxn: eqn
    arg:
      lhs: "&delta;(i)(A)"
      conn: "&sube;"
      rhs: "&#x27e6;&nbsp;A&nbsp;&#x27e7;<sup>i</sup>"
  - fxn: eqn
    arg:
      lhs: "i<sub>s</sub><sup>+</sup>(A)"
      conn: =
      rhs: "i<sub>s</sub><sup>+</sup>(A) &cap; &delta;(i)(A)"
  - fxn: eqn
    arg:
      lhs:
        fxn: eqn
        arg:
          lhs: A
          conn: "&#x297d;<sub>s</sub>"
          rhs: B
      conn: =
      rhs:
        - fxn: eqn
          arg:
            lhs: "1"
            conn: if
            rhs: "&#x27e6;&nbsp;A&nbsp;&#x27e7;<sup>i</sup>&nbsp;&sube;&nbsp;&#x27e6;&nbsp;B&nbsp;&#x27e7;<sup>i[i<sub>s</sub>&rarr;i<sub>s</sub><sup>+</sup>(A)]</sup>"
        - fxn: eqn
          arg:
            lhs: "0"
            conn: otherwise
            rhs: "&nbsp;"
---

Hello world!
