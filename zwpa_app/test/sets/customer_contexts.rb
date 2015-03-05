module Contexts
	module CustomerContexts
		def create_customers
			@customer1 = FactoryGirl.create(:customer, company_name: "Council")
      		@customer2 = FactoryGirl.create(:customer, company_name: "Alcoa")
      		@customer3 = FactoryGirl.create(:customer, company_name: "BurgerKing")
		end

		def delete_customers
			@customer1.delete
			@customer2.delete
			@customer3.delete
		end

	end
end