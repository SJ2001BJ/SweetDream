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

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
      {name: "Matthew", email: "matthew@me.com",
         telephone: "1234567890", message: "Hello"}
         
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
end
end
