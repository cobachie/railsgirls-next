class SessionsController < ApplicationController
  skip_before_action :authenticate, only: %i[new create]

  def new
  end

  def create
    user = User.find_by(account: params[:account])
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to ideas_path
    else
      flash[:error] = 'アカウントまたはパスワードが正しくありません。'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
