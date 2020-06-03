class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new{0}
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] += amount
  end

  def total_calories
    calories = 0
    @ingredients_required.keys.sum do |ingredient|
      calories += ingredient.calories
      end
    calories
  end
end
