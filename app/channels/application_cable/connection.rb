module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      Rails.logger.info "Connection established with user: #{current_user.email}" # Use `email` or other identifier
    end

    private

    def find_verified_user
      if verified_user = env['warden'].user
        verified_user
      else
        transmit({ error: 'unauthorized', message: 'You must be logged in to access this feature.' })
        reject_unauthorized_connection
      end
    end
  end
end
