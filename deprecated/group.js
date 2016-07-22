$(document).ready( function() {
  $( ".groupnav a" ).click( function() {
    var temp = $( this ).attr( "class" );
    $( this ).closest( ".group" ).find( ".space" ).each( function() {
      if ( $( this ).hasClass( temp ) ) {
        $( this ).css( "display", "block" );
      } else {
        $( this ).css( "display", "none" );
      }
    });
    return false;
  });
});
