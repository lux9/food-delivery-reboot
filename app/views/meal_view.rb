class MealView

  def ask_for_name
    puts "Please enter a name"
    puts ">"
    return gets.chomp
  end

  def ask_for_price
    puts "Please enter a price"
    puts ">"
    return gets.chomp
  end

  def display(meals)
    # puts "Mostrar all the meals?"
    meals.each do |meal|
      puts "#{meal.id}. #{meal.name}, #{meal.price}"
    end
    puts "------------------------"
  end
end
