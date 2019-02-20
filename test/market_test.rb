require 'minitest/autorun'
require 'minitest/pride'
require './lib/market'
require './lib/vendor'

class MarketTest < Minitest::Test
  def test_for_inctanse
    market = Market.new("South Pearl Street Farmers Market")
    assert_instance_of Market, market
  end
  def test_name
    market = Market.new("South Pearl Street Farmers Market")

    assert_equal "South Pearl Street Farmers Market", market.name
  end
  def test_vendor_1
    market = Market.new("South Pearl Street Farmers Market")
    vendor_1 = Vendor.new("Rocky Mountain Fresh")
    vendor_1.stock("Peaches", 35)
    vendor_1.stock("Tomatoes", 7)
  end
  def test_vendor_2
    market = Market.new("South Pearl Street Farmers Market")
    vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    vendor_2.stock("Banana Nice Cream", 50)
    vendor_2.stock("Peach-Raspberry Nice Cream", 25)
  end
  def test_vendor_3
    market = Market.new("South Pearl Street Farmers Market")
    vendor_3 = Vendor.new("Palisade Peach Shack")
    vendor_3.stock("Peaches", 65)
  end
  def test_add_vendor
    market = Market.new("South Pearl Street Farmers Market")
    vendor_1 = Vendor.new("Rocky Mountain Fresh")
    vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    vendor_3 = Vendor.new("Palisade Peach Shack")
    market.add_vendor(vendor_1)
    market.add_vendor(vendor_2)
    assert_equal 3, market.add_vendor(vendor_3).count
    assert_equal ["Rocky Mountain Fresh", "Ba-Nom-a-Nom", "Palisade Peach Shack"], market.vendor_names
  end

  def test_vendors_that_sell_a_type_of_thing
    market = Market.new("South Pearl Street Farmers Market")
    vendor_1 = Vendor.new("Rocky Mountain Fresh")
    vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    vendor_3 = Vendor.new("Palisade Peach Shack")
    vendor_1.stock("Peaches", 35)
    vendor_1.stock("Tomatoes", 7)
    vendor_2.stock("Banana Nice Cream", 50)
    vendor_2.stock("Peach-Raspberry Nice Cream", 25)
    vendor_3.stock("Peaches", 65)
    market.vendors_that_sell("poly")
  end
end
