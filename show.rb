require_relative 'adapter.rb'

class Show
  def initialize
    @ada = Adapter.new
  end
end

class ShowPrice < Show
  def show_current_wood_price
    arr_hash = Hash.new
    arr_hash = @ada.change_invoice_wooden_to_hash
    arr_hash.each { |key, value|
      puts "#{key}: #{value}"
    }
  end

  def show_current_metal_price
    arr_hash = Hash.new
    arr_hash = @ada.change_invoice_metal_to_hash
    arr_hash.each { |key, value|
      puts "#{key}: #{value}"
    }
  end
end

