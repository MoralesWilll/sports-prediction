class OpenService
  def initialize(prompt)
    @prompt = prompt
    @client = OpenAI::Client.new(access_token: ENV["API_KEY"], log_errors: true)
  end

  def ask
    response = @client.chat(
      parameters: {
        model: "gpt-4-turbo",
        messages: [ { role: "user", content: @prompt } ],
        temperature: 0.7,
        max_tokens: 200
      }
    )
    content = response.dig("choices", 0, "message", "content")
    raise "Unexpected response structure" if content.nil?

    content
  rescue => e
    puts "Error: #{e.message}"
    nil
  end
end
