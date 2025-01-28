class SessionController < ApplicationController
  after_action

  protected

  def after_sign_in_path_for(resource)
    # user_path(resource)
    root_path(resource)
  end
end
