require 'test_helper'

class ChocolateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chocolate_index_url
    assert_response :redirect

  end

end
