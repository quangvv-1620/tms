import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    alert("hello world")
  }

  demo() {
    console.log("this is demo...")
  }
}
