class ActivitiesController < ApplicationController
    #before_action :require_login, except: [:index, :show]
    before_action :set_activity, only: [:show, :edit, :update, :destroy]
    
    # GET /activities
    def index
      @activities = Activity.all
      render json: @activities
    end
    
    # GET /activities/1
    def show
      render json: @activity
    end
  
    # POST /activities
    def create
      @activity = Activity.new(activity_params)
      #@activity.user = current_user
      #puts "Current User: #{current_user.inspect}"
  
      if @activity.save
        render json: @activity, status: :created
      else
        render json: { errors: @activity.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Other actions...
  
    private
  
    def set_activity
      @activity = Activity.find(params[:id])
    end
  
    def activity_params
      params.require(:activity).permit(:title, :description, :date, :user_id)
    end
  
    def require_login
      unless current_user
        render json: { error: 'You must be logged in to access this section' }, status: :unauthorized
      end
    end
  end