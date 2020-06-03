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
end
