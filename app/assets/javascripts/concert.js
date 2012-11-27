
$(function() {
  $( "#datepicker" ).datepicker({
    showOn: "button",
    buttonImage: "images/calendar.gif",
    buttonImageOnly: true
  });

  $('#concert_name_art').autocomplete({
    minLength: 1,
    focus: function() { return false; },
    source: function(request, response) {
      SC.get('/users', { q: request }, function(artists) {
        if(artists.length == 0) return;
        for(artist in artists) {
          artists[artist].value = artists[artist].full_name;
        }
        response( $.map( artists, function( item ) {
          return {
            value: item.full_name 
          }
        }));
      });
    },
    select: function(event, ui) {
    }
  });

  var select = '';
        for(t in tracks) {
          select += '<option value="' + tracks[t].title + '</option>';
        } 
        $('#concert_song').html(select);

});