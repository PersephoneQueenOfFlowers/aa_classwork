class CatsController < ApplicationController
  
    def index
        @cats = Cat.all
        render :index  
    end

    def show
      @cat = Cat.find_by(id: params[:id])
      render :show       
    end

    def new
      @cat = Cat.new
        render :new
    end

    def create 
      # debugger
      @cat = Cat.new(cat_params)
 
      if @cat.save
        # redirect_to "/users/#{user.id}"
        redirect_to "/cats/#{@cat.id}"
        # render json: user
      else
        render :new
        # render json: user.errors.full_messages, status: 422
      end

    end

    def update

      cat = Cat.find(params[:id])

      success = cat.update( cat_params )
      if success
        render json: cat 
      else
        render json: errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy 
      cat = Cat.find(params[:id])
      cat.destroy 
      render json: cat 
    end

    def cat_params
      params.require(:cat).permit(:id,:color,:name,:age,:sex,:birth_date,:description) #=> {email: jfdkajf, political_affiliation: fjkdlaj
    end

end
