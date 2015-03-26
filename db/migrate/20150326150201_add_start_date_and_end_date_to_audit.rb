class AddStartDateAndEndDateToAudit < ActiveRecord::Migration
  def change
  	remove_column :audits, :time_period
  	add_column :audits, :start_date, :date
  	add_column :audits, :end_date, :date
  end
end
