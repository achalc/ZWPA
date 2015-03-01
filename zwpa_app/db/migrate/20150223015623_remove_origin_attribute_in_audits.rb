class RemoveOriginAttributeInAudits < ActiveRecord::Migration
  def change
  	remove_column :audits, :origin
  	add_column :wastes, :origin, :string
  end
end
