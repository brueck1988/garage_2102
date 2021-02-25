class Garage
  attr_reader :name,
              :customers,
              :all_cars

  def initialize(name)
    @name = name
    @customers = []
    @all_cars = []
  end

  def add_customer(owner)
    @customers << owner
  end

  def all_cars
    @customers.each do |customer|
      customer.cars.each do |car|
        @all_cars << car
      end
    end
    @all_cars
  end
end
