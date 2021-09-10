require 'csv'

class CustomerRepository

  def initialize(csv_path)
    @customers = []
    @csv_file = csv_path
    @next_id = 1
    load_csv if File.exist?(@csv_file)
    # p @customers
  end

  def add(customer)
    customer.id = @next_id
    @next_id += 1
    @customers << customer
    save_csv
  end

  def all
    return @customers
  end

  def load_csv
    CSV.foreach(@csv_file, {headers: :first_row, header_converters: :symbol}) do |row|
      row[:id] = row[:id].to_i
      @customers << Customer.new(row)
      @next_id = @customers.last.id + 1
    end
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name"]
      @customers.each do |customer|
        csv << [customer.id, customer.name]
      end
    end
  end
end
















