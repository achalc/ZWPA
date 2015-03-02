require 'test_helper'

class RequestTest < ActiveSupport::TestCase
	should have_many(:walkthroughs)
	should have_many(:notes)
	should have_many(:audits)
	should belong_to(:customer)

	should validate_presence_of(:customer_id)
	should validate_presence_of(:date)

	should allow_value("4122683259").for(:phone)
	should allow_value("412-268-3259").for(:phone)
	should allow_value("412.268.3259").for(:phone)
	should allow_value("(412) 268-3259").for(:phone)

	should_not allow_value("2683259").for(:phone)
	should_not allow_value("4122683259x224").for(:phone)
	should_not allow_value("800-EAT-FOOD").for(:phone)
	should_not allow_value("412/268/3259").for(:phone)
	should_not allow_value("412-2683-259").for(:phone)

	should allow_value("fred@fred.com").for(:email)
	should allow_value("fred@andrew.cmu.edu").for(:email)
	should allow_value("my_fred@fred.org").for(:email)
	should allow_value("fred123@fred.gov").for(:email)
	should allow_value("my.fred@fred.net").for(:email)

	should_not allow_value("fred").for(:email)
	should_not allow_value("fred@fred,com").for(:email)
	should_not allow_value("fred@fred.uk").for(:email)
	should_not allow_value("my fred@fred.com").for(:email)
	should_not allow_value("fred@fred.con").for(:email)

	should allow_value(12345).for(:zip_code)

	should_not allow_value("fred").for(:zip_code)
	should_not allow_value(111).for(:zip_code)

	# setup context
	context "Within context" do
		setup do
			create_customers
			create_requests
		end

		teardown do
			delete_customers
			delete_requests
		end

		should "sort the requests in chronological order" do
			all_creation_times = Request.chronological.map { |e| e.created_at }
			assert all_creation_times[0] < all_creation_times[2]
			deny all_creation_times[1] < all_creation_times[0]
		end

		should "sort the requests by the customer's company name" do
			assert_equal ["Alcoa", "BurgerKing", "Council"], Request.by_customer.all.map{|c| c.customer.company_name}
		end

	end	
end
