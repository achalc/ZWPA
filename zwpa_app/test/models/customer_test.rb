require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  
  # test relationships
  should have_many(:requests)
  should belong_to(:user)

  # test validations
  should validate_presence_of(:user_id)
  should validate_numericality_of(:user_id)
  should_not allow_value(-1).for(:user_id)
  should_not allow_value(0).for(:user_id)
  should_not allow_value(50.50).for(:user_id)
  should validate_presence_of(:company_name)

  context "Within context" do

    should "show that there are three customers in in alphabetical order" do
      user1 = FactoryGirl.build(:user, username: "user", password: "secret")
      c = FactoryGirl.build(:customer, user: user1, company_name: "Council")
      a = FactoryGirl.build(:customer, user: user1, company_name: "Alcoa")
      b = FactoryGirl.build(:customer, user: user1, company_name: "BurgerKing")
      assert_equal ["Alcoa", "BurgerKing", "Council"], Customer.alphabetical.all.map{|c| c.company_name}
    end

  end

end
