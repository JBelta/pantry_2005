class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(item)
    @stock.keys.count{|key| key == item}
  end
end
