
require 'pry'
class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {} # you decide what goes here...
  end
  def check_stock(fruit_type)
    #binding.pry
    if @inventory.key?(fruit_type) == true
      return @inventory[fruit_type]
    else
      return 0
    end
  end



  def stock(fuit_type, cantidad)
    if @inventory.key?(fuit_type) == true
      @inventory[fuit_type] += cantidad

    elsif @inventory.key?(fuit_type) == false
      @inventory[fuit_type] = cantidad
    end
  end

end
