require './lib/pantry'
require './lib/ingredient'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({
                                  name: "Cheese",
                                  unit: "oz",
                                  calories: 50
                                  })
    @ingredient2 = Ingredient.new({
                                  name: "Macaroni",
                                  unit: "oz",
                                  calories: 200
                                  })
    @pantry =  Pantry.new
  end

  def test_does_it_exist
    assert_instance_of Pantry, @pantry
  end

  def test_pantry_has_attributes
    assert_equal ({}), @pantry.stock
  end

  def test_stock_check
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end
end
