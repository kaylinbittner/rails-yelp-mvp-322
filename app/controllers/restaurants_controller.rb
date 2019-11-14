class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
  end
  def show
    @restaurant = Restaurant.find(restaurant_params)
  end
  def update
    @restaurant = Restaurant.find(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
  def edit
  end
  def destroy
    @restaurant = Restaurant.find(restaurant_params)
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
