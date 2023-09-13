class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:create, :destroy]
    
    def create
      user = User.find_by(email: params[:user][:email]) 
      
      if user&.authenticate(params[:user][:password]) 
        session[:user_id] = user.id
        render json: { user_id: user.id }, status: :created
      else
        render json: { error: "Invalid email or password" }, status: :unauthorized
      end
    end
  
      def destroy
          session[:user_id] = nil
          render json: { message: "Logged out successfully" }, status: :ok
        end
  end