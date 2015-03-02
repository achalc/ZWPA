require 'test_helper'

class WasteTest < ActiveSupport::TestCase
	should belong_to(:audit)

	should validate_presence_of(:audit_id)
	should validate_presence_of(:material_type)

	should validate_numericality_of(:weight)
	should allow_value(123).for(:weight)
	should allow_value(3.33).for(:weight)

	should_not allow_value("aeihreo").for(:weight)

	# setup context
	context "Within context" do
		setup do
			create_wastes
		end

		teardown do
			delete_wastes
		end

		should "sort the wastes in chronological order" do
			all_creation_times = Waste.chronological.map { |e| e.created_at }
			assert all_creation_times[0] < all_creation_times[2]
			deny all_creation_times[1] < all_creation_times[0]
		end
	end
end