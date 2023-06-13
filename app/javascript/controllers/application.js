import { Application } from "@hotwired/stimulus"
import { Controller } from "stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export default class extends Controller {
  static targets = [ "output", "input" ]

  readURL() {
    var input = this.inputTarget
    var output = this.outputTarget

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function () {
       output.src = reader.result
     }

     reader.readAsDataURL(input.files[0]);
   }
 }

}


export { application }
