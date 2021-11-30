require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '.price' ,/\$[,\d]+\.\d\d/
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'

    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the following form to get in touch with us.'
  end
end
