class GoalsController < ApplicationController

    before_action :require_logged_in, only: [:create, :destroy]
   
    def create 
      debugger
      @goal = Goal.new(goal_params)
      @goal.user_id = params[:user_id]

      if @goal.save 
        redirect_to user_url(params[:user_id])
      else
        flash[:errors] = @goal.errors.full_messages
        redirect_to user_url(params[:user_id])
      end
      
    end

    def destroy 
      @this_goal = current_user.goals.find_by(id: params[:id])
      if @this_goal && @this_goal.destroy
        redirect_to users_url 
      end
    end

    def goal_params
      params.require(:goal).permit(:name, :details, :status)
    end
end
