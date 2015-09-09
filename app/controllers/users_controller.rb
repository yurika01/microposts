class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      #保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'Profileを編集しました'
    else
      #  保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end

  def followings
    @user = User.find(params[:id])
    @following_users = @user.following_users
  end
  
  def followers
    @user = User.find(params[:id])
    @follower_users = @user.follower_users
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :location, :profile, :password,
                                :password_confirmation, :avatar)
  end
end
