require 'test_helper'

class AuditTest < ActiveSupport::TestCase
	should belong_to(:request)
	should have_many(:wastes)

	should validate_presence_of(:request_id)
	should validate_presence_of(:start_date)
	should validate_presence_of(:end_date)
	should validate_presence_of(:generator)
	should validate_presence_of(:location)

	# setup context
	context "Within context" do
		setup do
			create_audits
		end

		teardown do
			delete_audits
		end

		should "sort the audits in chronological order" do
			all_creation_times = Audit.chronological.map { |e| e.created_at }
			assert all_creation_times[0] < all_creation_times[2]
			deny all_creation_times[1] < all_creation_times[0]
		end
	end
end