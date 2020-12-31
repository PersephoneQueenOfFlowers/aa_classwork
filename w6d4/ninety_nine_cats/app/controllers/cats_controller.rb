class CatsController < ApplicationController
    def index
        cats_all = Cat.all
        render 
    end


end