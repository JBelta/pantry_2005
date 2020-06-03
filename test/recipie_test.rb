require './lib/ingredient'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class RecipeTest < Minitest::Test
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
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_does_it_exist
    assert_instance_of Recipe, @recipe1
  end

  def test_it_has_attributes
    assert_equal "Mac and Cheese", @recipe1.name
    assert_equal ({}), @recipe1.ingredients_required
  end
end
