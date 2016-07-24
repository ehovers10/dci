$(document).ready( function() {
  $('.typology').DataTable( {
    responsive: true,
    columnDefs: [
      { responsivePriority: 1, targets: 0 },
      { responsivePriority: 2, targets: -1 }
    ],
    searching: false,
    paging: false,
    scrollX: true
  });
});
