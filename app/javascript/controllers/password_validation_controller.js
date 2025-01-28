// app/javascript/controllers/password_validation_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["password", "confirmation", "submit", "error"]

  connect() {
    this.submitTarget.disabled = true
  }

  validatePasswords() {
    const password = this.passwordTarget.value
    const confirmation = this.confirmationTarget.value
    
    if (password === "" || confirmation === "") {
      this.submitTarget.disabled = true
      this.errorTarget.textContent = ""
      return
    }

    if (password === confirmation) {
      this.submitTarget.disabled = false
      this.errorTarget.textContent = ""
      this.confirmationTarget.classList.remove("border-red-500")
      this.confirmationTarget.classList.add("border-green-500")
    } else {
      this.submitTarget.disabled = true
      this.errorTarget.textContent = "Passwords don't match"
      this.confirmationTarget.classList.remove("border-green-500")
      this.confirmationTarget.classList.add("border-red-500")
    }
  }
}