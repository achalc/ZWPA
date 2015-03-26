FactoryGirl.define do 

	factory :user do
		username "admin"
		password "secret"
	end

	factory :customer do
		association :user
		company_name "PRC"
	end

	factory :request do
		association :customer
		contact_firstname "Example"
		contact_lastname "Person"
		title "Mr."
		email "example@person.com"
		phone "123-456-7890"
		street_address "5000 Forbes Ave"
		city "Pittsburgh"
		date Date.new(2015,1,1)
		zip_code "15213"
	end

	factory :note do
		description "This is a test decription for this note."
		photo "this will be the filename for the photo"
		association :request
	end

	factory :waste do
		association :audit
		note "This is a test description for this waste."
		weight 1.0
		material_type "trash"
		origin "Bathroom"
	end

	factory :audit do
		association :request
		start_date Date.new(2015,1,4)
		end_date Date.new(2015,1,5)
		generator "Trash"
		location "Porter Hall"
	end
end