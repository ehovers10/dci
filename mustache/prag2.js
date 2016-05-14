var pragmatics = {
  name: "drs",
  body: {
    eqn: {
      lhs: {
        "eqn": {
          "lhs": "&phi;",
          "conn": "=",
          "rhs": {
            "fxn": {
              "name": "drswrap",
              "arg": {
                "dref": "&phi;<sup>d</sup>",
                "conditions": "&phi;<sup>c</sup>"
              }
            }
          }
        }
      },
      conn: "is",
      rhs: "a discourse representation structure (DRS)"
    }
  },
  sub: [
    {
      "name": "drefs",
      "eqn": {
        "lhs": "&phi;<sup>d</sup>",
        "conn": "is",
        "rhs": "a sequence of drefs introduced in the discourse"
      }
    },
    {
      "name": "conditions",
      "eqn": {
        "lhs": "&phi;<sup>c</sup>",
        "conn": "is",
        "rhs": "a sequence of conditions, imposing constraints on the model against which sentences are evaluated"
      }
    }
  ]
};
