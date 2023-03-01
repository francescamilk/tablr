class DishesController < ApplicationController
  def index
    @antipasti = Dish.antipasti
    @primi     = Dish.primi
    @secondi   = Dish.secondi + Dish.contorni
    @dolci     = Dish.dolci + Dish.bevande
  end
end
