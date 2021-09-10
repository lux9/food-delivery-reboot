require_relative "../views/meal_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    @meal_view = MealView.new
    @meal_repository = meal_repository

  end

  def create_meal
    name = @meal_view.ask_for_name
    # Name
    price = @meal_view.ask_for_price.to_i
    # Price
    meal = Meal.new({name: name, price: price})
    # Create meal instance with the info
    @meal_repository.add(meal)
    # Send instance to repository (save to csv/array)
  end

  def list_meals
     # [<#MealClass>,<#MealClass>,<#MealClass>]
    @meal_view.display(@meal_repository.all)
  end
end
