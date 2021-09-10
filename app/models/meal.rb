class Meal
  attr_reader :name, :price
  attr_accessor :id

  def initialize(attribute = {})
    @id = attribute[:id]
    @name = attribute[:name] # => nil
    @price = attribute[:price]
  end
end
