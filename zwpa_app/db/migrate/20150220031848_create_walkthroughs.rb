class CreateWalkthroughs < ActiveRecord::Migration
  def change
    create_table :walkthroughs do |t|
      t.integer :request_id
      t.integer :square_footage
      t.integer :num_floors
      t.integer :max_occupancy
      t.integer :other_businesses
      t.text :other_businesses_type
      t.integer :ownership
      t.integer :waste_disposal_contract
      t.integer :waste_management_cost
      t.integer :loading_dock
      t.integer :freight_elevators
      t.integer :storage_space
      t.text :storage_space_details
      t.text :trash_hauler
      t.integer :trash_hauler_contract
      t.integer :contract_available
      t.integer :annual_record
      t.string :waste_storage
      t.string :waste_containers
      t.integer :buy_recycled
      t.text :buy_recycled_details
      t.integer :green_cleaning_products
      t.text :green_cleaning_details
      t.integer :mandated_recycling
      t.integer :recycling_program
      t.text :recycling_details
      t.integer :recycling_stream
      t.text :recycling_stream_details
      t.text :discontinued_recycling
      t.integer :current_compost
      t.integer :past_compost
      t.integer :generate_toner_ink
      t.integer :recycle_toner_ink
      t.integer :generate_CFLs
      t.integer :recycle_CFLs
      t.integer :generate_batteries
      t.integer :recycle_batteries
      t.integer :generate_computers
      t.integer :recycle_computers
      t.integer :generate_cellphones
      t.integer :recycle_cellphones
      t.integer :generate_tvs
      t.integer :recycle_tvs
      t.integer :generate_other_corded_equipment
      t.integer :recycle_cellphones
      t.integer :generate_furniture
      t.integer :recycle_furniture
      t.integer :generate_linens_uniforms
      t.integer :recycle_linens_uniforms
      t.integer :generate_construction_debris
      t.integer :recycle_construction_debris
      t.integer :generate_pallets
      t.integer :recycle_pallets
      t.integer :ZW_policy
      t.integer :LEED
      t.integer :recertify_LEED
      t.integer :requesting_audit_services

      t.timestamps
    end
  end
end
