// Run "./bin/rails g stimulus hello" to create the file and update the index, then amend:

// app/assets/javascripts/controllers/hello_controller.js
import { Controller } from "@hotwired/stimulus"

// Connects with data-controller="hello"
export default class extends Controller {
  static targets = ["name", "output"]

  complete() {
    this.target 
  }
}