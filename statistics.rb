require 'singleton'
class Statistics
  def add(amount)

  end

  def print
    
  end
end

class SalesStatistics < Statistics
  include Singleton
  def initialize
    @ids = []
    @sale_amount = []
    @counter = 0
  end

  def add(amount)
    @ids << @counter
    @counter += 1
    @sale_amount << amount
  end
  
  def print
    p @ids
    p @sale_amount
  end
end
