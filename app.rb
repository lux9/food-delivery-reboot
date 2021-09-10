# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb

require_relative "app/repositories/meal_repository"
require_relative "app/repositories/customer_repository"
require_relative "app/controllers/meals_controller"
require_relative "app/controllers/customers_controller"
require_relative "router"

customer_repository = CustomerRepository.new("data/customer.csv")
customer_controller = CustomersController.new(customer_repository)


meal_repository = MealRepository.new("data/meal.csv")
meals_controller = MealsController.new(meal_repository)
router = Router.new(meals_controller, customer_controller)

router.run
