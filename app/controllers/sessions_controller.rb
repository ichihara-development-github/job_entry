class SessionsController < ApplicationController
    
    def new
        @user = User.new
    end
    
    
    def create
        if @user = User.find(name: params[:user][:name])
            @user.authenticate(params[:user][:password])
            login
            redirect_to jobs_path
        else
            render login_path
        end
    end
    
   def destroy
       session[:user_id] = nil
       redirect_to root_path
   end
    

    
end