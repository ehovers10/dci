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

  /* Toggle popbox */

  $( ".pop" ).click( function() {
    var hidden = '#' + $(this).attr('id') + '-hid';
    $(hidden).css('display','block');

    return false;
  });

  $( ".popclose" ).click( function() {
    $(this).parents(".lightbox").css("display","none");

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
