import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // connect() {
  //   this.element.textContent = "Hello World!"
  //   alert("hello world")
  // }

  greet() {
    console.log("hello world...")
  }
}
