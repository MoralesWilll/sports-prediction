class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params[:room]}"
  end

  def unsubscribed
  end

  def speak(data)
    ai_service = OpenService.new(data["message"])
    @prediction = ai_service.ask
    ActionCable.server.broadcast("chat_#{params[:room]}", {message: @prediction})
  end
end
