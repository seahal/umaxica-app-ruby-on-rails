import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log(`init`);
    this.element.textContent = "Hello World!?"
  }

  static targets = ['name'];

  greet() {
    console.log(`Hello World`);
  }
}
