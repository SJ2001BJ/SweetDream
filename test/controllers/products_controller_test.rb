require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @product = products(:one)
    @update = {
      title:'Sweet Dream',
      description: 'Wibbles are fun!',
      image_url:   'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg',
      price: 20.05
    }
    user = User.create!(email: 'js02575@surrey.ac.uk', password: '123shi',admin: true)
    user.save
    sign_in user
  end

begin
  test "should get index" do
  rescue Exception => e
    get products_url(@product)
    assert_response :success
  end
end


  test "should get new" do

    get new_product_url
    assert_response :success
  end



  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: @update }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: @update  }
    assert_redirected_to product_url(@product)
  end



  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
