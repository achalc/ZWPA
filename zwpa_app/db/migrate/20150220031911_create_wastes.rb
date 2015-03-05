class CreateWastes < ActiveRecord::Migration
  def change
    create_table :wastes do |t|
      t.integer :audit_id
      t.text :note
      t.float :weight
      t.string :material_type

      t.timestamps
    end
  end
end
