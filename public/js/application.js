$(document).ready(function() {


  $('#edit_toggle').on('click', function(event){
    $('.edit_holder').toggle();
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
