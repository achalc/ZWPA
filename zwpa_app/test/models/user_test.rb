require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  should have_many(:customers)

  should validate_presence_of(:username)
  should validate_presence_of(:password)
end
