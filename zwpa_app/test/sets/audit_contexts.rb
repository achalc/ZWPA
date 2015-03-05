module Contexts
	module AuditContexts
		def create_audits
			@audit1 = FactoryGirl.create(:audit, date: Date.new(2015,1,4), time_period: "January 1-3, 2015", 
				generator: "Trash", location: "Porter Hall")
			sleep 1
			@audit2 = FactoryGirl.create(:audit, date: Date.new(2015,2,20), time_period: "January 15-30, 2015", 
				generator: "Recycle", location: "Baker Hall")
			sleep 1
			@audit3 = FactoryGirl.create(:audit, date: Date.new(2015,10,1), time_period: "October 1, 2015", 
				generator: "Trash", location: "Porter Hall")
		end

		def delete_audits
			@audit1.delete
			@audit2.delete
			@audit3.delete
		end

	end
end