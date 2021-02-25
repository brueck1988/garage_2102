require './lib/car'
class Owner
  attr_reader :name,
              :occupation,
              :cars
              
  def initialize(name, occupation)
    @name       = name
    @occupation = occupation
    @cars       = []
  end

  def buy(car)
    year   = car.split(' ')[0]
    color  = car.split(' ')[1]
    make   = car.split(' ')[2]
    model  = car.split(' ')[3]

    car_info = {description: "#{color} #{make} #{model}", year: year}
    new_car = Car.new(car_info)

    @cars << new_car
  end
end
