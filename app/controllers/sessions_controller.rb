class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(account: params[:account])
    if user && user.authenticate(params[:password])
      # ログイン成功
    else
      flash[:error] = 'アカウントまたはパスワードが正しくありません。'
      render :new
    end
  end

  def destroy
  end
end
