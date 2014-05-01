class OmniauthCallbacksController < ApplicationController
  def google_oauth2
    auth = request.env['omniauth.auth']
    user = User.find_by(provider: auth['provider'], uid: auth['uid']) || User.create_with_omniauth(auth)

    if user.persisted?
      flash[:success] = "successfully logged in"
      sign_in_and_redirect user, notice: "signed in"
    else
      redirect_to :root, notice: "failed to save user"
    end
  end

  def failure
    p "reached failure"
  end
end
