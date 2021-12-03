require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "users attributes must not be empty" do
     user = User.new
     user.save
     refute user.valid?

  end



  test " normal users attributes is saved" do
     user = User.new
     user.email = 'jse02575@surrey.ac.uk'
     user.password = '111shi'
     user.admin = 'true'

     user.save
     assert user.valid?
  end

  test " admin users attributes is saved" do
     user = User.new
     user.email = '17737380642@126.com'
     user.password = '111111'
     user.admin = 'true'

     user.save
     assert user.valid?
  end





end
