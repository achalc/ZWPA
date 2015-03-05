class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :customer_id
      t.string :contact_firstname
      t.string :contact_lastname
      t.string :title
      t.string :email
      t.string :phone
      t.text :street_address
      t.string :city
      t.string :state
      t.date :date
      t.string :Note
      t.integer :request_id
      t.text :photo
      t.text :description

      t.timestamps
    end
  end
end
