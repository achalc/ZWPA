class AddRecycleOtherCordedToWalkthrough < ActiveRecord::Migration
  def change
  	add_column :walkthroughs, :recycle_other_corded_equipment, :string
  end
end
