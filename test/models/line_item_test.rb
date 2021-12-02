require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "line_items quantity is saved" do
    line_item = Line_item.new
    line_item.quantity = 3
    line_item.save
    assert line_item.valid?
  end
end
