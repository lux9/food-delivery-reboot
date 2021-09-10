class CustomerView

  def ask_for_name
    puts "Please enter a name"
    puts ">"
    return gets.chomp
  end


  def display(customers)
    # puts "Mostrar all the customers?"
    customers.each do |customer|
      puts "#{customer.id}. #{customer.name}"
    end
    puts "------------------------"
  end
end
