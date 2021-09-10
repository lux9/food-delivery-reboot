require_relative "../views/customer_view"
require_relative "../models/customer"

class CustomersController
  def initialize(customer_repository)
    @customer_view = CustomerView.new
    @customer_repository = customer_repository
  end

  def create_customer
    name = @customer_view.ask_for_name
    # Name
    # Price
    customer = Customer.new({name: name})
    # Create customer instance with the info
    @customer_repository.add(customer)
    # Send instance to repository (save to csv/array)
  end

  def list_customers
     # [<#customerClass>,<#customerClass>,<#customerClass>]
    @customer_view.display(@customer_repository.all)
  end
end
