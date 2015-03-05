module Contexts
	module RequestContexts
		def create_requests
			@request1 = FactoryGirl.create(:request, customer: @customer1, contact_firstname: "John", contact_lastname: "Doe", 
				title: "Facilities Manager", email: "johndoe@gmail.com", phone: "123-456-7890", 
				street_address: "100 Main St", city: "Pittsburgh", state: "PA", date: Date.new(2015,2,3), 
				zip_code: "15213")
			sleep 1
			@request2 = FactoryGirl.create(:request, customer: @customer2, contact_firstname: "Ernie", contact_lastname: "Wilson", 
				title: "CEO", email: "ewilson@yahoo.com", phone: "555-555-5555", 
				street_address: "555 Fifth Ave", city: "Pittsburgh", state: "PA", date: Date.new(2015,3,30), 
				zip_code: "15289")
			sleep 1
			@request3 = FactoryGirl.create(:request, customer: @customer3, contact_firstname: "Bill", contact_lastname: "Lee", 
				title: "Teacher", email: "billlee@cmu.edu", phone: "111-222-3333", 
				street_address: "5032 Forbes Avenue", city: "Pittsburgh", state: "PA", date: Date.new(2015,2,15), 
				zip_code: "15213")
		end

		def delete_requests
			@request1.delete
			@request2.delete
			@request3.delete
		end

	end
end