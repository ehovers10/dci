$(document).ready( function() {
  $('.typology').DataTable( {
    responsive: {
      details: {
        display: $.fn.dataTable.Responsive.display.childRow,
        type: 'column'
      }
    },
    columnDefs: [
      {
        className: 'expand',
        orderable: false,
        targets:   0
    }
    ],
    searching: false,
    paging: false,
    //scrollX: true,
    info: false
  });
});
