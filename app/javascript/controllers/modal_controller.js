import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal", "forgotPasswordModal"]

  open(event) {
    event.preventDefault();
    this.modalTarget.classList.remove("hidden");
    this.modalTarget.classList.add("flex"); // Ensure it stays centered
    // Trigger fade in
    setTimeout(() => {
      this.modalTarget.classList.remove("opacity-0");
      this.modalTarget.querySelector("div").classList.remove("-translate-y-4");
    }, 50);
  }

  openForgotPassword(event) {
    event.preventDefault();
    this.forgotPasswordModalTarget.classList.remove("hidden");
    this.forgotPasswordModalTarget.classList.add("flex"); // Ensure it stays centered
    // Trigger fade in
    setTimeout(() => {
      this.forgotPasswordModalTarget.classList.remove("opacity-0");
      this.forgotPasswordModalTarget.querySelector("div").classList.remove("-translate-y-4");
    }, 50);
  }

  close(event) {
    if (event) event.preventDefault();
    // Trigger fade out
    const modal = event ? event.target.closest("[data-modal-target]") : this.modalTarget;
    modal.classList.add("opacity-0");
    modal.querySelector("div").classList.add("-translate-y-4");
    // Wait for animation to complete before hiding
    setTimeout(() => {
      modal.classList.add("hidden");
      modal.classList.remove("flex"); // Remove flex to avoid affecting layout when hidden
    }, 300);
  }
}