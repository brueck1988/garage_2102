require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'
require './lib/garage'

class GarageTest < Minitest::Test
  def test_it_exists
    garage = Garage.new('Totally Safe Parking')
    assert_instance_of Garage, garage
  end

  def test_it_has_attributes
    garage = Garage.new('Totally Safe Parking')
    assert_equal 'Totally Safe Parking', garage.name
  end

  def test_it_add_customer
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')
    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')
    garage.add_customer(owner_1)
    garage.add_customer(owner_2)
    assert_equal [owner_1, owner_2], garage.customers
  end

  def test_all_cars
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')
    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

    expected = [garage.customers[0].cars, garage.customers[1].cars].flatten
    assert_equal expected, garage.all_cars
  end

  def test_cars_by_make
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')
    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)
    garage.all_cars
    require "pry";binding.pry
    car_1 = garage.all_cars[0]
    car_2 = garage.all_cars[1]
    car_3 = garage.all_cars[2]
    car_4 = garage.all_cars[3]
    expected = {"Ford" => [car_1, car_2], "Chevrolet" => [car_3], "Volvo" => [car_4]}
    assert_equal expected, garage.cars_by_make
  end
end
