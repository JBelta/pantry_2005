class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new{0}
  end

  def stock_check(item)
    if @stock.keys.any?(item)
      @stock.values_at(item)[0]
    else
      @stock.keys{|key| key == item}.count
    end
  end

  def restock(item, amount)
    @stock[item] += amount
  end
end
