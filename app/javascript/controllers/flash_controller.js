import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        setTimeout(() => {
          this.element.classList.remove("opacity-0")
        }, 10)
      }

    close() {
        this.element.classList.add("translate-y-full")
        setTimeout(() => {
        this.element.remove()
        }, 300)
    }
}