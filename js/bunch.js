$(document).ready( function() {

  // Set margin of hidden areas
  $(".area.offset").each( function() {
      var bunchwidth = $(this).parent().width() / 2,
          areawidth = $(this).width() / 2,
          offset = bunchwidth - areawidth;
      $( this ).css( "margin-left", offset );
  });

  // Set margin of shown area
  $(".area.offset:first-of-type").each( function() {
    var bunchwidth = $(this).parent().width() / 2,
        areawidth = $(this).children().width() / 2,
        offset = bunchwidth - areawidth;
    $( this ).css( "margin-left", offset );
  });

  // Toggle areas
  $( ".body-nav a" ).click( function() {
    var temp = $( this ).attr( "class" );
    $( this ).closest( ".bunch" ).find( ".area" ).each( function() {
      if ( $( this ).hasClass( temp ) ) {
        $( this ).css( "display", "block" );
      } else {
        $( this ).css( "display", "none" );
      }
    });
    return false;
  });
});
