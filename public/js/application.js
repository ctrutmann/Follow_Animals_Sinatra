$(document).ready(function() {
  $('.title').on('click', function() {
    window.location.href='/';
  });

  $('.animal').on('click', function() {
    id = $(this).attr('id')
    window.location.href='/animals/'+ id;
  });
});
