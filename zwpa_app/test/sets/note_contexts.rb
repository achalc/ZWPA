module Contexts
	module NoteContexts
		def create_notes
			@note1 = FactoryGirl.create(:note, photo: "image1.jpg", description: "this is test note 1")
			sleep 1
			@note2 = FactoryGirl.create(:note, photo: "image2.jpg", description: "this is test note 2")
			sleep 1
			@note3 = FactoryGirl.create(:note, photo: "image3.jpg", description: "this is test note 3")
		end

		def delete_notes
			@note1.delete
			@note2.delete
			@note3.delete
		end

	end
end