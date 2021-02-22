// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


import { addBook } from ‘addBook’

document addEventListener(‘turbolinks:load’, ()=> {
  if (document.querySelector(‘#fieldsetContainer’)) {
    addBook()
  }
})

function removeField() {
  document.body.addEventListener("click", (e) => {
    if ( e.target.nodeName === "A" &&
         e.target.parentNode.previousElementSibling) {

/* to prevent from removing the first fieldset as it's previous sibling is null */

      e.target.parentNode.remove();
    }
  });
}

