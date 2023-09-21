import { Application } from "@hotwired/stimulus"
import jquery from "jquery"
import moment from "moment"

const application = Application.start()

// Configure Stimulus development experience
application.debug = true
window.Stimulus   = application
window.$          = jquery
window.moment     = moment

export { application }
