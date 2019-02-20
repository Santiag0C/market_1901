require './lib/vendor'
require 'pry'
class Market
  attr_reader :vendors,
              :name
  def initialize(name)
    @name = name
    @vendors = []
    @vendors_name = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.each do |name|
      @vendors_name << name.name
    end
    @vendors_name
    end

    def vendors_that_sell(something)
      vendor = Vendor.new("Rocky Mountain Fresh")
      vendor.stock("Peaches", 35)

      vendor.inventory.each do |x|
        if x.name

      binding.pry
    end

    end
  end
