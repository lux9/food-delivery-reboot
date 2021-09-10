class Customer
  attr_reader :name
  attr_accessor :id

  def initialize(attribute = {})
    @id = attribute[:id]
    @name = attribute[:name]
  end
end
