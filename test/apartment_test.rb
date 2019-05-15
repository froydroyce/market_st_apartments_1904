require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require 'pry'

class ApartmentTest < Minitest::Test
  def setup
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_apartment_exists

    assert_instance_of Apartment, @a1
  end
end
