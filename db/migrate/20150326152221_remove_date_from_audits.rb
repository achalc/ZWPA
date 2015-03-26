class RemoveDateFromAudits < ActiveRecord::Migration
  def change
  	remove_column :audits, :date
  end
end
