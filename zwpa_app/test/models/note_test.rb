require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  should belong_to(:request)
  should validate_presence_of(:request_id)

  # setup context
  context "Within context" do
  	setup do
  		create_notes
  	end

  	teardown do
  		delete_notes
  	end

  	should "order the notes in chronological order" do
  		all_creation_times = Note.chronological.map { |e| e.created_at }
  		assert all_creation_times[0] < all_creation_times[2]
  		deny all_creation_times[1] < all_creation_times[0]
  	end

  end
end
