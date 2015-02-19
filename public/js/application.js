$(document).ready(function() {


  $('#toggle_login').on('click', function(event){
    $('#login_form').toggle();
  })


  $('#toggle_signup').on('click', function(event){
    $('#signup_form').toggle();
  })




  $('#record').mouseenter(function(event){

      console.log("mousein")
                  $("#record").rotate(90);


  });



  $('#edit_user_toggle').on('click', function(event){
    $('.edit_user').toggle();
  })

  $('.delete_btn').on('click', function(event){
    event.preventDefault();

    $.ajax({
      type: "DELETE",
      url: this.href,
      success: function(response){
        // this re-insert the altered vinyls table response from the server
        $('.user_vinyls').html(response)
      },
      error: function(){
        console.log("Not Working")
      }
    })

  })



});


