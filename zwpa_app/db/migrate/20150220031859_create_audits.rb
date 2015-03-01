class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.integer :request_id
      t.date :date
      t.string :origin
      t.string :time_period
      t.string :dumpster_type

      t.timestamps
    end
  end
end
