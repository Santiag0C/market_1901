require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require 'pry'

class VendorTest < Minitest::Test
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

  def test_it_has_a_name
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_starts_as_empty_hash
    vendor = Vendor.new("Rocky Mountain Fresh")
    #inding.pry
    assert_equal ({}), vendor.inventory
  end
  def test_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)

    #binding.pry
    assert_equal 1, vendor.inventory.count
    assert_equal 30, vendor.check_stock("Peaches")
    assert_equal 55, vendor.stock("Peaches", 25)
    vendor.stock("Tomatoes", 12)
    assert_equal 2, vendor.inventory.count

  end

end
