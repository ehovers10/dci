$(document).ready( function() {

function InquiryElement ( infostate, flux, domain, mode ) {
  this.infostate = infostate.charAt(0).toUpperCase() + infostate.slice(1);
  this.flux = flux.charAt(0).toUpperCase() + flux.slice(1);
  this.domain = domain.charAt(0).toUpperCase() + domain.slice(1);
  this.mode = mode.charAt(0).toUpperCase() + mode.slice(1);
};

$('#infostate').html(
  '<thead><tr><th>Evaluation</th><th>Flux</th><th>Domain</th><th>Mode</th></tr></thead>'
);

$('#infostate').DataTable( {
  data: [
    new InquiryElement ("logical omniscience II", "static","external","deduction"),
    new InquiryElement ( "truth acquisition","static","internal","abduction"),
    new InquiryElement ( "logical omniscience I","static","internal","deduction"),
    new InquiryElement ( "error insurance","dynamic","internal","induction"),
    new InquiryElement ( "cross-inquiry identification","static","external","deduction"),
    new InquiryElement ( "error avoidance","static","internal","deduction"),
    new InquiryElement ( "warrant to form","dynamic","internal","induction"),
    new InquiryElement ( "warrant to retain","static","external","induction"),
    new InquiryElement ( "inspiration","dynamic","external","abduction")
  ],
  columns: [
      { data: 'infostate'},
      { data: 'flux' },
      { data: 'domain' },
      { data: 'mode' }
  ],
  searching: false,
  paging: false
} );

function StructureElement ( phase, structure, func, operation, cogtool, reference ) {
  var struc = "",funct = "",oper = "",cogt = "",refe = "";
  for (var i = 0; i < structure.length; i++) { struc += '<tr><td>' + structure[i] + '</td></tr>'; }
  for (var i = 0; i < func.length; i++) { funct += '<tr><td>' + func[i] + '</td></tr>'; }
  for (var i = 0; i < operation.length; i++) { oper += '<tr><td>' + operation[i] + '</td></tr>'; }
  for (var i = 0; i < cogtool.length; i++) { cogt += '<tr><td>' + cogtool[i] + '</td></tr>'; }
  for (var i = 0; i < reference.length; i++) { refe += '<tr><td>' + reference[i] + '</td></tr>'; }
  this.Phase = phase.charAt(0).toUpperCase() + phase.slice(1);
  this.Structure = '<table>' + struc + '</table>';
  this.Func = '<table>' + funct + '</table>';
  this.Operation = '<table>' + oper + '</table>';
  this.CogTool = '<table>' + cogt + '</table>';
  this.reference = '<table>' + refe + '</table>';
};

$('#structure').html(
  '<thead><tr><th>Phase</th><th>Structure</th><th>Function</th><th>Operation</th><th>Cognitive Tool</th><th>References</th></tr></thead>'
);
$('#structure').DataTable( {
  data: [
    new StructureElement ("Deduction",["Expand","Contract"],["Possibility space"],["Revision"],["levi1980"],["Full belief"]),
    new StructureElement ("Abduction",["Partition","Prefer"],["Structured possibility space","Preference ranking"],
      ["Partitioning relation","Ordering relation"],["peirce1877","james1896"],["Iritation of doubt","Will to believe"])
  ],
  columns: [
      { data: 'Phase'},
      { data: 'Structure'},
      { data: 'Func' },
      { data: 'Operation' },
      { data: 'CogTool' },
      { data: 'reference'}
  ],
  searching: false,
  paging: false,
  responsive: true
});

});
