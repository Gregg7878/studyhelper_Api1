class ApplicationController < ActionController::API
    before_action :authorized, except: [:login, :show, :index, :create]
    

    def authorized
      return render json: { error: "Not Authorized" }, status: :unauthorized unless session.include?(:user_id)
    end
end