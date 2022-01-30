class ApplicationController < ActionController::Base
  #ログインしていないユーザーをログインページに遷移させる
  before_action :authenticate_user!  
  #ログインしていないユーザーをログインページに遷移させる
  #deviseにまつわる画面に来た場合にアクションが実行される
  before_action :configure_permitted_parameters, if: :devise_controller?
  #deviseにまつわる画面に来た場合にアクションが実行される

  private
  # deviseでユーザー登録をする場合に使用できるメソッド[特定のカラムを許容する]
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # deviseでユーザー登録をする場合に使用できるメソッド[特定のカラムを許容する]
end

