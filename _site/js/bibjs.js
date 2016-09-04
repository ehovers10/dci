$(document).ready( function() {

$('#bib').html(
  '<thead><tr><th>Title</th><th>Author</th><th>Year</th></tr></thead>'
);
$('#bib').DataTable( {
  ajax: '../js/bib.json',
  columns: [
      { data: 'Title', responsivePriority: 5 },
      { data: 'Author' },
      { data: 'Year' }
  ],
  responsive: {
    details: {
      display: $.fn.dataTable.Responsive.display.childRow,
      type: 'column'
    }
  },
  columnDefs: {
    className: 'expand',
    orderable: false,
    targets:   0
  },
});

});
