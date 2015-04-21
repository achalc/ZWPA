class AllowCheckboxesToAcceptArray < ActiveRecord::Migration
  def change
    remove_column :walkthroughs, :generate_toner_ink
    remove_column :walkthroughs, :recycle_toner_ink
    remove_column :walkthroughs, :generate_CFLs
    remove_column :walkthroughs, :recycle_CFLs
    remove_column :walkthroughs, :generate_batteries
    remove_column :walkthroughs, :recycle_batteries
    remove_column :walkthroughs, :generate_computers
    remove_column :walkthroughs, :recycle_computers
    remove_column :walkthroughs, :generate_cellphones
    remove_column :walkthroughs, :recycle_cellphones
    remove_column :walkthroughs, :generate_tvs
    remove_column :walkthroughs, :recycle_tvs
    remove_column :walkthroughs, :generate_other_corded_equipment
    remove_column :walkthroughs, :recycle_other_corded_equipment
    remove_column :walkthroughs, :generate_furniture
    remove_column :walkthroughs, :recycle_furniture
    remove_column :walkthroughs, :generate_linens_uniforms
    remove_column :walkthroughs, :recycle_linens_uniforms
    remove_column :walkthroughs, :generate_construction_debris
    remove_column :walkthroughs, :recycle_construction_debris
    remove_column :walkthroughs, :generate_pallets
    remove_column :walkthroughs, :recycle_pallets
  	add_column :walkthroughs, :generate_toner_ink, :text, array: true
  	add_column :walkthroughs, :recycle_toner_ink, :text, array: true
  	add_column :walkthroughs, :generate_CFLs, :text, array: true
  	add_column :walkthroughs, :recycle_CFLs, :text, array: true
  	add_column :walkthroughs, :generate_batteries, :text, array: true
  	add_column :walkthroughs, :recycle_batteries, :text, array: true
  	add_column :walkthroughs, :generate_computers, :text, array: true
  	add_column :walkthroughs, :recycle_computers, :text, array: true
  	add_column :walkthroughs, :generate_cellphones, :text, array: true
  	add_column :walkthroughs, :recycle_cellphones, :text, array: true
  	add_column :walkthroughs, :generate_tvs, :text, array: true
  	add_column :walkthroughs, :recycle_tvs, :text, array: true
  	add_column :walkthroughs, :generate_other_corded_equipment, :text, array: true
  	add_column :walkthroughs, :recycle_other_corded_equipment, :text, array: true
  	add_column :walkthroughs, :generate_furniture, :text, array: true
  	add_column :walkthroughs, :recycle_furniture, :text, array: true
  	add_column :walkthroughs, :generate_linens_uniforms, :text, array: true
  	add_column :walkthroughs, :recycle_linens_uniforms, :text, array: true
  	add_column :walkthroughs, :generate_construction_debris, :text, array: true
  	add_column :walkthroughs, :recycle_construction_debris, :text, array: true
  	add_column :walkthroughs, :generate_pallets, :text, array: true
  	add_column :walkthroughs, :recycle_pallets, :text, array: true
  end
end
