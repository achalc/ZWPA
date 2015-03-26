module Contexts
	module AuditContexts
		def create_audits
			@audit1 = FactoryGirl.create(:audit, start_date: Date.new(2015,1,4), end_date: Date.new(2015,1,4), 
				generator: "Trash", location: "Porter Hall")
			sleep 1
			@audit2 = FactoryGirl.create(:audit, start_date: Date.new(2015,2,20), end_date: Date.new(2015,2,24),
				generator: "Recycle", location: "Baker Hall")
			sleep 1
			@audit3 = FactoryGirl.create(:audit, start_date: Date.new(2015,10,1), end_date: Date.new(2015,10,4), 
				generator: "Trash", location: "Porter Hall")
		end

		def delete_audits
			@audit1.delete
			@audit2.delete
			@audit3.delete
		end

	end
end