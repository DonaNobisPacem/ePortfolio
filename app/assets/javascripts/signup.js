$(document).ready(function() {

  $('form#signup').bind('ajax:success', function(e, data, status, xhr) {
    console.log(data);
    if(data.success) {
      $('#user_signup_box').html(data.content);
    } else {
      $('#user_signup_box').prepend(data.errors.join('<br />'));
    }
  });

});