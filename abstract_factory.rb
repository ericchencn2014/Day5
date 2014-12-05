require_relative 'part.rb'
class AbstractFactory

end

class WoodenFactory < AbstractFactory
  def create_block
    WoodenBock.new
  end

  def create_door
    WoodenDoor.new
  end

  def create_windows
    WoodenWindow.new
  end
end

class MetalFactory < AbstractFactory
  def create_block
    MetalBock.new
  end

  def create_door
    MetalDoor.new
  end

  def create_windows
    MetalWindow.new
  end
end
