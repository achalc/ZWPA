class RemoveNotesFromRequests < ActiveRecord::Migration
  def change
  	remove_column :requests, :Note
  	remove_column :requests, :request_id
  	remove_column :requests, :photo
  	remove_column :requests, :description 
  end
end
