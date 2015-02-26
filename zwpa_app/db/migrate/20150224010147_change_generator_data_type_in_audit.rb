class ChangeGeneratorDataTypeInAudit < ActiveRecord::Migration
  def change
  	change_column :audits, :generator, :string
  end
end
