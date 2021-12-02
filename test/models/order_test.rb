require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test " orders attributes is saved" do
     order = Order.new
     order.name = 'shijun'
     order.phone = '18513663266'
     order.address = 'beijing'


     order.save
     assert order.valid?
  end

end
