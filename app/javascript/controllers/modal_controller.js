import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.modal = document.getElementById("modal")
    this.content = document.getElementById("container")
    this.modal_content = document.getElementById("modal_content")
  }

  open() {
    this.content.classList.add("blur-sm")
    this.modal.classList.remove("hidden")
  }

  close() {
    this.content.classList.remove("blur-sm")
    this.modal.classList.add("hidden")
    this.modal_content.innerHTML = ""
  }
}
