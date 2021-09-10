require 'csv'

class MealRepository

  def initialize(csv_path)
    @meals = []
    @csv_file = csv_path
    @next_id = 1
    load_csv if File.exist?(@csv_file)
    # p @meals
  end

  def add(meal)
    meal.id = @next_id
    @next_id += 1
    @meals << meal
    save_csv
  end

  def all
    return @meals
  end

  def load_csv
    CSV.foreach(@csv_file, {headers: :first_row, header_converters: :symbol}) do |row|
      row[:id] = row[:id].to_i
      @meals << Meal.new(row)
      @next_id = @meals.last.id + 1
    end
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "price"]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
