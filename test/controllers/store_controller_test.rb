require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    user = User.create!(email: 'js02575@surrey.ac.uk', password: '123shi')
    user.save
    sign_in user
  end
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '.price' ,/\$[,\d]+\.\d\d/
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'

    #assert_select 'h1', 'Contact us'
    #assert_select 'p', 'Complete the following form to get in touch with us.'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect

  end

  test "should post request contact" do
    post request_contact_url, params:
      {name: "Matthew", email: "matthew@me.com",
         telephone: "1234567890", message: "Hello"}

    assert_response :redirect

  end


end
