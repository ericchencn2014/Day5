require_relative 'abstract_factory.rb'

class Adapter
  def change_invoice_wooden_to_hash
    per = Hash.new()
    factory_instance = WoodenFactory.new
    factory_instance.create_block
    factory_instance.create_door
    factory_instance.create_windows

    per = { "Wooden Block" => factory_instance.create_block.cost,
            "Wooden Door" => factory_instance.create_door.cost,
            "Wooden Windows" => factory_instance.create_windows.cost}

    per
  end

  def change_invoice_metal_to_hash
    per = Hash.new()
    factory_instance = MetalFactory.new
    factory_instance.create_block
    factory_instance.create_door
    factory_instance.create_windows

    per = { "Metal Block" => factory_instance.create_block.cost,
            "Metal Door" => factory_instance.create_door.cost,
            "Metal Windows" => factory_instance.create_windows.cost}

    per
  end
end
