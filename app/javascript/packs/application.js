// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
/*import "@oddcamp/cocoon-vanilla-js";*/
import "jquery"
import "@nathanvda/cocoon"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

/*$(document).on("turbolinks:load", function(){

  console.log("hole")
   $('form').on('click', '.add_social', function(event){
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'),'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));	
    return event.preventDefault();
    });


    $('form').on('click', '.remove_record', function(event){
      $(this).prev('input[type=hidden]').val('1');
      $(this).closest('tr').hide();
      return event.preventDefault();
    });


})*/


