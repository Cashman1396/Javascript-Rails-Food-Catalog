class FoodsController < ApplicationController
    def index
        foods = Food.all
        render json: FoodSerializer.new(foods)
    end

    def show
        food = Food.find_by(id: params[:id])
        render json: FoodSerializer.new(food)
    end 

    def create
        food = Food.new(food_params)
        if food.save
            render json: FoodSerializer.new(food)
        end 
    end 

    private 

    def food_params
        params.require(:food).permit(:name, :cost, :description, :image_url, :catalog_id)
    end 

end
