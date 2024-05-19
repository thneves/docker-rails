// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"
import Rails from "@rails/ujs"
import "popper"
import "./controllers"
import * as bootstrap from "bootstrap"

Rails.start()


import { Dropdown } from 'bootstrap'

document.addEventListener('turbo:load', () => {
  // Initialize all dropdowns
  var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
  var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
    return new Dropdown(dropdownToggleEl)
  })
})
