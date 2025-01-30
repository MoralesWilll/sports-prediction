import consumer from "channels/consumer"



export const chatChannel = consumer.subscriptions.create("ChatChannel", {
  connected() {
    console.log("Connected to the chat channel.")
  },
  disconnected() {
    console.log("Disconnected from the chat channel.")
  },
  received(data) {
    const messagesDiv = document.getElementById("messages")
    if (messagesDiv) {
      messagesDiv.innerHTML += `
      <div class="my-4 p-2 bg-green-200 rounded-md shadow-md">
      <h2><strong>Respuesta:</strong><h2>
      <p>${data.message}</p>
      </div>`
    }
  },
  speak(message) {
    const messagesDiv = document.getElementById("messages")
    if (messagesDiv) {
      messagesDiv.innerHTML += `
      <div class="my-4 p-2 bg-cyan-100 rounded-md shadow-md">
      <h2><strong>Pregunta:</strong><h2>
      <p>${message}</p>
      </div>`
    }
    this.perform("speak", { message: message })
  }
});

