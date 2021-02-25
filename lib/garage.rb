class Garage
  attr_reader :name,
              :customers,
              :all_cars_in_garage

  def initialize(name)
    @name               = name
    @customers          = []
    @all_cars_in_garage = []
    @cars_by_make       = Hash.new(0)
  end

  def add_customer(owner)
    @customers << owner
  end

  def all_cars
    @customers.each do |customer|
      customer.cars.each do |car|
        @all_cars_in_garage << car
      end
    end
    @all_cars_in_garage
  end

  def cars_by_make
    all_cars_in_garage.each do |car|
      @cars_by_make[car.make] = car
    end
  end
end
