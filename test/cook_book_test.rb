require './lib/cook_book'
require './lib/pantry'
require './lib/recipe'
require './lib/ingredient'
require 'minitest/autorun'
require 'minitest/pride'

class CoookBookTest < Minitest::Test
  def setup
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end

  def test_does_it_exist
    assert_instance_of CookBook, @cookbook
  end

  def test_it_has_attributes
    assert_equal [], @cookbook.recipies
  end

end
