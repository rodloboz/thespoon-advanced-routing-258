class Admin::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render 'restaurants/index'
  end
end
