class AddZipCodeToRequest < ActiveRecord::Migration
  def change
  	add_column :requests, :zip_code, :string
  end
end
