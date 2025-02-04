// app/javascript/controllers/password_validation_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["password", "passwordConfirmation", "errorMessage"]

  validate() {
    if (this.passwordTarget.value !== this.passwordConfirmationTarget.value) {
      this.errorMessageTarget.textContent = "Passwords do not match";
      this.errorMessageTarget.classList.remove("hidden");
    } else {
      this.errorMessageTarget.textContent = "";
      this.errorMessageTarget.classList.add("hidden");
    }
  }
}