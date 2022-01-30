class UsersController < ApplicationController
  
  def edit
  end

  def update
    # ユーザー情報が格納されているユーザーの情報を更新する
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
    # ユーザー情報が格納されているユーザーの情報を更新する
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
