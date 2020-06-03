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
                                  calories: 50
                                  })
    @ingredient2 = Ingredient.new({
                                  name: "Macaroni",
                                  unit: "oz",
                                  calories: 200
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
end
