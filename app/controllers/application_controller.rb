class ApplicationController < ActionController::Base
<<<<<<< HEAD
  protect_from_forgery with: :exception
=======
  protect_from_forgery
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end
