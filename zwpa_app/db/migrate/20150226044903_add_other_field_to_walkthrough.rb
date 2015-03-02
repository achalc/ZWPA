class AddOtherFieldToWalkthrough < ActiveRecord::Migration
  def change
  	add_column :walkthroughs, :waste_containers_other, :text
  end
end
