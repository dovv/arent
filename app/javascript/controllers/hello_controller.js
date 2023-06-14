import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
    alert(2);

    $('btn-danger').on('click', function() {
      alert(22);
    })

  }
}
