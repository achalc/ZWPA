module Contexts
	module WasteContexts
		def create_wastes
			@waste1 = FactoryGirl.create(:waste, note: "", weight: 2.3, material_type: "Mixed Paper", origin: "1st floor")
			sleep 1
			@waste2 = FactoryGirl.create(:waste, note: "Black bag", weight: 2, material_type: "Paper Towels", origin: "1st floor bathroom")
			sleep 1
			@waste3 = FactoryGirl.create(:waste, note: "", weight: 5.66, material_type: "Aluminum", origin: "Kitchen")
		end

		def delete_wastes
			@waste1.delete
			@waste2.delete
			@waste3.delete
		end

	end
end
