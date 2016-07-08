$(document).ready( function() {
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
