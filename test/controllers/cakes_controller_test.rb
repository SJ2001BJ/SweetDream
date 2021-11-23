require 'test_helper'

class CakesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cakes_index_url
    assert_response :success
    assert_select '.price' ,/\$[,\d]+\.\d\d/
  end

end
