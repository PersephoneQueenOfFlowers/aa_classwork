class SessionController < ApplicationController
    
    def new
        render :new
    end


    def create
        @session = Session.new() #needs params
        if @session.save
            
        else
            
        end
    end

end
