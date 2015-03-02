class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :request_id
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
