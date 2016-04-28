$(document).ready( function() {

  $(".open").click( function() {
    var hidden = $(this).attr('id') + '-hid';
    $('#' + hidden).slideToggle('slow',function() {
      // Animation complete.
    });
    return false;
  });

  /* Toggle max size */

  $( ".reveal" ).click( function() {

    var mini = $(this).attr('id') + '-min';
    $('#' + mini).toggleClass( "maxsize",function() {
      // Animation complete.
    });

    $(this).toggleClass( "more" );
    $(this).toggleClass( "less" );

    return false;
  });

  /* Tooltips */

  $( ".tooled" ).hover(
    function() {
      var tipped = $(this).attr('id') + '-tip';
      $('#' + tipped).css('display', 'block');
    }, function() {
      var tipped = $(this).attr('id') + '-tip';
      $('#' + tipped).css('display', 'none');
    }
  );

});
