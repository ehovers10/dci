$(document).ready( function() {

$('#bib').html(
  '<thead><tr><th>Title</th><th>Author</th><th>Year</th></tr></thead>'
);
$('#bib').DataTable( {
  ajax: '../js/bib.json',
  columns: [
      { data: 'Title' },
      { data: 'Author' },
      { data: 'Year' }
  ]
});

});
