class SessionsController < ApplicationController
  def omniauth
    auth = request.env["omniauth.auth"]

    render json: {
      provider: auth.provider,
      uid: auth.uid,
      info: auth.info,
      credentials: auth.credentials
    }
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
