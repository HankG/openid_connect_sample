class Connect::GoogleController < ApplicationController
  before_action :require_anonymous_access

  def show
    if params.require(:code).blank? || session[:state] != params.require(:state)
      raise AuthenticationRequired.new
    end
    authenticate Connect::Google.authenticate(params.require(:code))
    logged_in!
  end

  def new
    session[:state] = SecureRandom.hex(32)
    redirect_to Connect::Google.authorization_uri(
      state: session[:state]
    )
  end
end
