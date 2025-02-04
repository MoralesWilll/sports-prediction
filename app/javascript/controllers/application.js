import { Application } from "@hotwired/stimulus"
import { chatChannel } from "../channels/chat_channel"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("message-form");
    const input = document.getElementById("message-input");
    const openChatButton = document.getElementById("open-chat");
    const closeChatButton = document.getElementById("close-chat");
    const chatModal = document.getElementById("chat-modal");

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
    // Show chat modal
    openChatButton.addEventListener("click", () => {
      chatModal.classList.remove("hidden");
    });

    // Hide chat modal
    closeChatButton.addEventListener("click", () => {
      chatModal.classList.add("hidden");
    });

    // Close modal when clicking outside of the chat box
    chatModal.addEventListener("click", (e) => {
      if (e.target === chatModal) {
        chatModal.classList.add("hidden");
      }
    });
  });




export { application }
