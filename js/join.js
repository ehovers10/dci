function maketable(table) {
  var jTable = [];

  for ( i=0; i < table.length; i++ ) {
    var sit = table[i];
    for ( j=0; j < sit.length; j++ ) {
      var thing = sit[j];
      var line = JSON.stringify({sit: i,ent: thing,val: "+"});
      jTable.push(JSON.parse(line));
    }
  }

  return jTable;
}

function inner(lookupTable, mainTable, lookupKey, mainKey, cols) {
    var l = lookupTable.length,
        m = mainTable.length,
        lookupIndex = [],
        output = [];
    for (var i = 0; i < l; i++) { // loop through l items
        var row = lookupTable[i];
        lookupIndex[row[lookupKey]] = row; // create an index for lookup table
    }
    for (var j = 0; j < m; j++) { // loop through m items
        var y = mainTable[j];
        var x = lookupIndex[y[mainKey]]; // get corresponding row from lookupTable
        // var total = y.push(x); // combine tables
        output.push(select(x,cols)); // select only the columns you need
    }

    return output;
}

function fullouter(a, b, lKey, rKey, select) {
    var m = a.length, n = b.length, c = [];

    for (var i = 0; i < m; i++) {
        var x = a[i];

        for (var j = 0; j < n; j++) { // cartesian product - all combinations
          var y = b[j];
          if (x.sit == y.sit) {
            samesit++;
            if (x[lKey] == y[rKey]) {
              x[rKey] = "+";
              j = n;
            } else {
              diffkey++;
            }
          }
        }
        if (y) c.push(y);         // if a row is returned add it to the table
    }

    return c;
}

function select(table,cols) {
  var cull = {};
  for ( i=0; i < cols.length; i++ ) {
    cull[cols[i]] = table[cols[i]];
  }
  return cull;
};

function displaytable(table) {
  var display = '',
      open = "<div class='relation'>",
      head = "<div class='head'>",
      body = "",
      row = [],
      temp = [],
      close = "</div>";

  for (var key in table[0]){
    head = head + "<div class='attribute'>" + key + "</div>";
  }
  head = head + "</div>";

  for (i=0; i < table.length; i++) {
    var line = '';
    for (var key in table[i]) {
      if ( key == 'sit' && table[i][key] == temp[key] ){
        line = line + "<div class='entity'>&#x22ee;</div>";
      } else if ( key == 'sit' ){
        line = line + "<div class='entity'>s<sub>" + table[i][key] + "</sub></div>";
      } else {
        line = line + "<div class='entity'>" + table[i][key] + "</div>";
      }
    }
    row[i] = "<div class='state'>" + line + "</div>";
    body = body + row[i];
    temp = table[i];
  }

  return open + head + body + close;
}
