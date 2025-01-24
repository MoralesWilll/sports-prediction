import consumer from "channels/consumer"


const room = "general"

export const chatChannel = consumer.subscriptions.create({channel: "ChatChannel", room: room }, {
  connected() {
    console.log("Connected to the chat channel.")
  },
  disconnected() {
    console.log("Disconnected from the chat channel.")
  },
  received(data) {
    const messagesDiv = document.getElementById("messages")
    if (messagesDiv) {
      messagesDiv.innerHTML += `<div>${data.message}</div>`
    }
  },
  speak(message) {
    console.log("llamamos doble esta monda")
    const messagesDiv = document.getElementById("messages")
    if (messagesDiv) {
      messagesDiv.innerHTML += `<div>${message}</div>`
    }
    this.perform("speak", { message: message })
  }
});

