require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "sweets attributes must not be empty" do
     product = Product.new
     product.save
     refute product.valid?

  end

  test "sweets attributes is saved" do
     product = Product.new
     product.title = 'valid for my sweets'
     product.description = 'This is the description of my valid sweets'
     product.image_url = 'https://iconbjjbelfast.com/wp-content/uploads/2017/04/default-image.jpg'
     product.price = 2.3

     product.save
     assert product.valid?
  end

  test " the price of candies must be positive or 0.01" do
    product = Product.new
    product.title = 'valid for my sweets'
    product.description = 'This is the description of my valid sweets'
    product.image_url = 'https://iconbjjbelfast.com/wp-content/uploads/2017/04/default-image.jpg'
    product.price = -3
    product.save
    refute product.valid?

  end



end
