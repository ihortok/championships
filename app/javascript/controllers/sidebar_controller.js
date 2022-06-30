import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.sidebar = document.getElementById("sidebar-main")
  }

  toggle() {
    this.sidebar.classList.toggle("left-[-100%]")
    this.sidebar.classList.toggle("left-0")
    document.body.classList.toggle("overflow-hidden")
  }
}
