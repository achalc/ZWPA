class AddLocationAttributeToAudits < ActiveRecord::Migration
  def change
  	add_column :audits, :location, :string
  end
end
