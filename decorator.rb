require_relative "part.rb"
class Decorator < Part
  def initialize(obj)
    @product = obj
  end
end

class BorderDecorator < Decorator
  def name
    @product.name + "_with_border"
  end

  def cost
    @product.cost + 2.00
  end
end

class TatooDecorator < Decorator
  def name
    @product.name + "_with_tatoo"
  end

  def cost
    @product.cost + 4.00
  end
end

