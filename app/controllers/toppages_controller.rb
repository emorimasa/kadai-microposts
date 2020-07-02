class ToppagesController < ApplicationController
  def index
    if logged_in?
      # topページから繋がる全てのページにインスタンス変数で連携
      @micropost = current_user.microposts.build  # form_with 用
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])
    end
  end
end
