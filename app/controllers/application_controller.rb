class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :authenticate

  protected

  def authenticate
    return if logged_in?

    redirect_to login_path
  end
end
