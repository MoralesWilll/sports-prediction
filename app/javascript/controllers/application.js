import { Application } from "@hotwired/stimulus"
import { chatChannel } from "../channels/chat_channel"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("message-form");
    const input = document.getElementById("message-input");

    if (form && input) {
      form.addEventListener("submit", (event) => {
        event.preventDefault();
        const message = input.value.trim();
        if (message !== "") {
          // Assuming you have the chat channel instance globally available
          chatChannel.speak(message);
          input.value = ""; // Clear the input
        }
      });
    }
  });


export { application }
