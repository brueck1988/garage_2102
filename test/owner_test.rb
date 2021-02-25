require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def test_it_exists
    owner_1 = Owner.new('Regina George', 'Heiress')

    assert_instance_of Owner, owner_1
  end

  def test_it_has_attributes
    owner_1 = Owner.new('Regina George', 'Heiress')

    assert_equal "Regina George", owner_1.name
    assert_equal "Heiress", owner_1.occupation
  end

  def test_buy_cars
    owner_1 = Owner.new('Regina George', 'Heiress')
    car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})

    assert_equal [], owner_1.cars
    actual = owner_1.buy('1967 Green Ford Mustang')

    assert_equal car_1.color, actual[0].color
    assert_equal car_1.make, actual[0].make
    assert_equal car_1.model, actual[0].model
    assert_equal car_1.model, actual[0].model
    assert_equal car_1.model, actual[0].model
  end
end
