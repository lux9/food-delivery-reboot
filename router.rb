# TODO: implement the router of your app.

class Router
  def initialize(meals_controller, customer_controller)
    @meals_controller = meals_controller
    @customers_controller = customer_controller
    @running = true
  end

  def run
    puts `clear`
    while @running
      puts "1. Create Meal"
      puts "2. List all Meals"
      puts "3. Create customers"
      puts "4. List all customers"
      puts ""
      puts "8. Exit"
      answer = gets.chomp
      puts `clear`
      case answer.to_i
      when 1 then @meals_controller.create_meal
      when 2 then @meals_controller.list_meals
      when 3 then @customers_controller.create_customer
      when 4 then @customers_controller.list_customers
      when 8 then @running = false
      end
    end
  end
end
