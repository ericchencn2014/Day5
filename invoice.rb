require_relative "part.rb"
require_relative "composite.rb"
require_relative "decorator.rb"
require_relative "factory.rb"
require_relative "abstract_factory.rb"

class Invoice
  def initialize(p_obj)
    @lego_game = p_obj
    @total_cost = 0
  end

  def generate_invoice
    parts = @lego_game.name
    cost_matrix = @lego_game.cost
    i = 0
    j = 0
    while i < parts.length
      puts "#{parts[i]}: #{cost_matrix[j][i]}\n"
      i += 1
    end
    @total_cost = cost_matrix.last
    puts "Total Cost: #{cost_matrix.last}"
  end

  def do_book_keeping(stats)
    stats_obj = stats.get_statistics
    stats_obj.add(@total_cost)
    stats_obj.print
  end
end






