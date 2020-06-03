require './lib/cook_book'
require './lib/pantry'
require './lib/recipe'
require './lib/ingredient'
require 'minitest/autorun'
require 'minitest/pride'

class CoookBookTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({
                                  name: "Cheese",
                                  unit: "C",
                                  calories: 100
                                  })
    @ingredient2 = Ingredient.new({
                                  name: "Macaroni",
                                  unit: "oz",
                                  calories: 30
                                  })
    @ingredient3 = Ingredient.new({
                                  name: "Ground Beef",
                                  unit: "oz",
                                  calories: 100
                                  })
    @ingredient4 = Ingredient.new({
                                  name: "Bun",
                                  unit: "g",
                                  calories: 75
                                  })
    @pantry = Pantry.new
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end

  def test_does_it_exist
    assert_instance_of CookBook, @cookbook
  end

  def test_it_has_attributes
    assert_equal [], @cookbook.recipes
  end

  def test_add_recipe
    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)
    assert_equal [@recipe1, @recipe2], @cookbook.recipes
  end

  def test_highest_calorie_meal
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)
    @recipe2.add_ingredient(@ingredient1, 2)
    @recipe2.add_ingredient(@ingredient3, 4)
    @recipe2.add_ingredient(@ingredient4, 1)
    assert_equal 440, @recipe1.total_calories
    assert_equal 675, @recipe2.total_calories
    assert_equal 0, 0
  end
end
