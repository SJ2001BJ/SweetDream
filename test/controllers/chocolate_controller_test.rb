require 'test_helper'

class ChocolateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chocolate_index_url
    assert_response :success
    assert_select '.price' ,/\$[,\d]+\.\d\d/
  end

end
