require_relative "part.rb"

class CompositePart < Part
  def initialize
    @components = []
  end

  def add_component(comp)
    @components << comp
  end

  def remove_component(comp_class)
    @components.each do |component|
      if component.instance_of?(comp_class) == true
        pos = @components.index(component)
        @components.delete_at(pos)
        return
      end
    end

    pos = @components.index(@components.in)
    @components.delete_at(pos)
  end

  def name
    parts = []
    @components.each do |component|
      parts << component.name
    end
    parts
  end

  def cost
    total_cost = 0.0
    cost_arr = []
    @components.each do |component|
      temp = component.cost
      cost_arr << temp
      total_cost += temp
    end
    return cost_arr, total_cost
  end
end

