import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]

  open(event) {
    event.preventDefault();
    this.modalTarget.classList.remove("hidden");
    // Trigger fade in
    setTimeout(() => {
      this.modalTarget.classList.remove("opacity-0");
      this.modalTarget.querySelector("div").classList.remove("-translate-y-4");
    }, 50);
  }

  close(event) {
    if (event) event.preventDefault();
    // Trigger fade out
    this.modalTarget.classList.add("opacity-0");
    this.modalTarget.querySelector("div").classList.add("-translate-y-4");
    // Wait for animation to complete before hiding
    setTimeout(() => {
      this.modalTarget.classList.add("hidden");
    }, 300);
  }
}