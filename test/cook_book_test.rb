require './lib/cook_book'
require './lib/pantry'
require './lib/ingredient'
require 'minitest/autorun'
require 'minitest/pride'

class CoookBookTest < Minitest::Test
  def setup
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end


end
