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
     user.email = 'js02575@surrey.ac.uk'
     user.admin = 'true'

     user.save
     assert user.valid?
  end

  test " admin users attributes is saved" do
     user = User.new
     user.email = '1773780642@126.com'
     user.password = 111111
     user.admin = 'true'

     user.save
     assert user.valid?
  end



end
