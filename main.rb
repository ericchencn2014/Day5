require_relative "part.rb"
require_relative "composite.rb"
require_relative "decorator.rb"
require_relative "factory.rb"
require_relative "abstract_factory.rb"
require_relative "invoice.rb"
require_relative 'show_price.rb'

def main
  lego_game1 = CompositePart.new
  sales_factory = SalesStatisticsFactory.new

  # Creating wooden factory so that all wooden products can be retrieved.
  factory_instance1 = WoodenFactory.new

  # Decorating it with Border and Tatoo
  block2 = BorderDecorator.new(factory_instance1.create_block)
  final_block2 = TatooDecorator.new(block2)

  lego_game1.add_component(final_block2)
  lego_game1.add_component(factory_instance1.create_door)
  lego_game1.add_component(factory_instance1.create_windows)
  invoice_obj = Invoice.new(lego_game1)
  invoice_obj.generate_invoice
  invoice_obj.do_book_keeping(sales_factory)

  lego_game2 = CompositePart.new
  factory_instance2 = MetalFactory.new

  final_door = BorderDecorator.new(factory_instance2.create_door)
  lego_game2.add_component(final_door)
  lego_game2.add_component(factory_instance2.create_windows)
  lego_game2.add_component(factory_instance2.create_block)
  invoice_obj = Invoice.new(lego_game2)
  invoice_obj.generate_invoice
  invoice_obj.do_book_keeping(sales_factory)


  sp = ShowPrice.new
  sp.show_current_metal_price
  sp.show_current_wood_price
end

main
