class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
   def current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
        end
   end
    
    def authenticate_user
        if @user = current_user && current_user
        else
            redirect_to root_path
            flash[:danger] = "権限がありません"
        end
    end
    
    def admin?
        unless current_user.admin
           redirect_to root_path
           flash[:danger] = "管理者のみ有効です"
        end
    end
    
   
  def login
     session[:user_id] = @user.id
  end
end
