require './lib/ingredient'
require 'minitest/autorun'
require 'minitest/pride'

class IngredientTest < Minitest::Test

  def test_does_it_exist
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_instance_of Ingredient, ingredient1
  end

end
