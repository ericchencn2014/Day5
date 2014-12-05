class Part
  def name

  end

  def cost

  end

  def add_component

  end

  def remove_component

  end
end

class Block < Part
  def name
    'Block'
  end

  def cost
    10.00
  end
end

class WoodenBock < Block
  def name
    'Wooden Block'
  end

  def cost
    10.00
  end
end

class MetalBock < Block
  def name
    'Metal Block'
  end

  def cost
    10.00
  end
end

class Door < Part
  def name
    'Door'
  end

  def cost
    12.50
  end
end

class WoodenDoor < Door
  def name
    'Wooden Door'
  end

  def cost
    12.50
  end
end

class MetalDoor < Door
  def name
    'Metal Door'
  end

  def cost
    12.50
  end
end

class Window < Part
  def name
    'Window'
  end

  def cost
    17.50
  end
end

class WoodenWindow < Window
  def name
    'Wooden Window'
  end

  def cost
    17.50
  end
end

class MetalWindow < Window
  def name
    'Metal Window'
  end

  def cost
    17.50
  end
end
