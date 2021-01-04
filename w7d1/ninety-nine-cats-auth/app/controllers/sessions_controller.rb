class SessionsController < ApplicationController
    
    def new
        render :new
    end


    def create
        @user = User.find_by_credentials(
          params[:user][:username],
          params[:user][:password]
        )

        if @user 
            redirect_to cats_url  
        else
          
        end
    end

    def destroy 
      # logout TODO we have to write this
      # redirect_to new_session_url 
    end



end
