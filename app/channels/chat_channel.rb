class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_user
  end

  def unsubscribed
  end

  def speak(data)
    ai_service = OpenService.new("quiero que actues como un experto de predicciones deportivas. la pregunta es: #{data["message"]}. Responde sin explicaciones largas, ni codigo html.")
    @prediction = ai_service.ask
    ChatChannel.broadcast_to(current_user, {message: @prediction})
  end
end
