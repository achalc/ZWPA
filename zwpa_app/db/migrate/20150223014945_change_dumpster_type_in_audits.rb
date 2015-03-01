class ChangeDumpsterTypeInAudits < ActiveRecord::Migration
  def change
  	rename_column :audits, :dumpster_type, :generator
  	change_column :audits, :generator, :integer
  end
end
