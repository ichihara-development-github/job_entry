class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :edit, :destroy]
  
  def set_user
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
  
  def new 
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      login
      redirect_to jobs_path
      flash[:success] = "登録が完了しました"
    else
      render "new"
      flash[:danger] = "無効な名前かパスワードです"
    end
  end

  def show
  end
  
  def entried
    @jobs = current_user.jobs
  end

  def edit
    if @user = User.update(user_params)
      redirect_to users_path
      flash[:success] = "変更が完了しました"
    else
      render "new"
      flash[:danger] = "エラーが発生しました"
    end
  end
  
  def update
  end
  
  def destroy
     @user.destroy
    redirect_to :back
  end
  
private
def user_params
  params.require(:user).permit(:name,:password, :password_comfirmation)
end
end
