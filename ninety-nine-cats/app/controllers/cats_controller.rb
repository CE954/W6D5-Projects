class CatsController < ApplicationController
    def index 
        @cats = Cat.all
        render :index
    end

    def create 
        @cat = Cat.new(cat_params)
        if @cat.save 
            redirect_to cat_url(@cat)
        else  
            render json: @cat.errors.full_messages, status: 422
        end
    end

    # def new 

    # end

    # def edit 

    # end

    def show 
        @cat = Cat.find(params[:id])
        render :show
    end

    # def update

    # end

    private 
    def cat_params 
        params.require(:cat).permit(:name, :birth_date, :color, :sex) 
    end
end
