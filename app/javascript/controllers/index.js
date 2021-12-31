// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)


// hello_controller.js
// import { Controller } from "stimulus"

// export default class extends Controller {
//     static targets = ["name", "output"]

//     greet() {
//         this.outputTarget.textContent =
//             `Hello, ${this.nameTarget.value}!`
//     }
// }


// import { Controller } from "stimulus"

// const RADIO_SELECTION_TOGGLE = 'radio-selection-toggle'

// export default class extends Controller {

//     static targets = ["modal", "radioButton"]

//     connect() {
//         document.addEventListener(RADIO_SELECTION_TOGGLE, this.handleSelection.bind(this));
//     }

//     toggle(event) {
//         event.stopImmediatePropagation()

//         const selectionEvent = new CustomEvent(RADIO_SELECTION_TOGGLE, {
//             detail: {
//                 name: event.target.name,
//                 value: event.target.value
//             }
//         });
//         document.dispatchEvent(selectionEvent);
//         return false;
//     }

//     handleSelection(event) {
//         if (event.detail.name === this.radioButtonTarget.name) {
//             this.modalTarget.hidden = event.detail.value !== this.radioButtonTarget.value
//         }
//     }
// }