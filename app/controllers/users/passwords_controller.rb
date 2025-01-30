class Users::PasswordsController < Devise::PasswordsController
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    if successfully_sent?(resource)
      # Success: Set a flash message and redirect to the same page (forgot password)
      flash[:notice] = "You will receive an email with instructions on how to reset your password in a few minutes."
      redirect_to request.referer # Reload the current page to show the flash message (snackbar)
    else
      # Error: Set a flash message and redirect to the sign-in page (or another page if needed)
      flash[:alert] = "Email not found. Please check your email address."
      redirect_to request.referer # Reload the current page to show the flash message (snackbar)
    end
  end
end
