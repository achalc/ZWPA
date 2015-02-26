require 'test_helper'

class WalkthroughTest < ActiveSupport::TestCase
  
  # test relationships
  should belong_to(:request)

  # test validations
  should validate_presence_of(:request_id)
  should validate_numericality_of(:request_id)
  should allow_value(1).for(:request_id)
  should_not allow_value(false).for(:request_id)
  should_not allow_value(-1).for(:request_id)
  should_not allow_value('false').for(:request_id)

  should validate_presence_of(:square_footage)
  should validate_numericality_of(:square_footage)
  should allow_value(100).for(:square_footage)
  should_not allow_value(-1).for(:square_footage)
  should_not allow_value(false).for(:square_footage)
  should_not allow_value('-1').for(:square_footage)

  should validate_presence_of(:num_floors)
  should validate_numericality_of(:num_floors)
  should allow_value(100).for(:num_floors)
  should_not allow_value(-1).for(:num_floors)
  should_not allow_value(false).for(:num_floors)
  should_not allow_value('-1').for(:num_floors)

  should validate_presence_of(:max_occupancy)
  should validate_numericality_of(:max_occupancy)
  should allow_value(100).for(:max_occupancy)
  should_not allow_value(-1).for(:max_occupancy)
  should_not allow_value(false).for(:max_occupancy)
  should_not allow_value('-1').for(:max_occupancy)

  # TO DO: add tests to make sure no other values can be added
  should allow_value('Yes').for(:other_businesses)
  should allow_value('No').for(:other_businesses)
  should allow_value("DK").for(:other_businesses)

  should allow_value('Owned').for(:ownership)
  should allow_value('Leased').for(:ownership)

  should allow_value('Yes').for(:waste_disposal_contract)
  should allow_value('No').for(:waste_disposal_contract)
  should allow_value("DK").for(:waste_disposal_contract)

  should allow_value('Yes').for(:waste_management_cost)
  should allow_value('No').for(:waste_management_cost)
  should allow_value("DK").for(:waste_management_cost)

  should allow_value('Yes').for(:loading_dock)
  should allow_value('No').for(:loading_dock)
  should allow_value("DK").for(:loading_dock) 

  should allow_value('Yes').for(:freight_elevators)
  should allow_value('No').for(:freight_elevators)
  should allow_value("DK").for(:freight_elevators) 

  should allow_value('Yes').for(:freight_elevators)
  should allow_value('No').for(:freight_elevators)
  should allow_value("DK").for(:freight_elevators) 

  should allow_value('Yes').for(:storage_space)
  should allow_value('No').for(:storage_space)

  should allow_value('Yes').for(:trash_hauler_contract)
  should allow_value('No').for(:trash_hauler_contract)
  should allow_value("DK").for(:trash_hauler_contract) 

  should allow_value('Yes').for(:contract_available)
  should allow_value('No').for(:contract_available)
  should allow_value("DK").for(:contract_available)

  should allow_value('Yes').for(:annual_record)
  should allow_value('No').for(:annual_record)
  should allow_value("DK").for(:annual_record)

  should allow_value('Yes').for(:buy_recycled)
  should allow_value('No').for(:buy_recycled)
  should allow_value("DK").for(:buy_recycled)

  should allow_value('Yes').for(:green_cleaning_products)
  should allow_value('No').for(:green_cleaning_products)
  should allow_value("DK").for(:green_cleaning_products)

  should allow_value('Yes').for(:mandated_recycling)
  should allow_value('No').for(:mandated_recycling)
  should allow_value("DK").for(:mandated_recycling)

  should allow_value('Yes').for(:recycling_program)
  should allow_value('No').for(:recycling_program)
  should allow_value("DK").for(:recycling_program)

  should allow_value('Yes').for(:recycling_stream)
  should allow_value('No').for(:recycling_stream)
  should allow_value("DK").for(:recycling_stream)

  should allow_value('Yes').for(:current_compost)
  should allow_value('No').for(:current_compost)
  should allow_value("DK").for(:current_compost)

  should allow_value('Yes').for(:past_compost)
  should allow_value('No').for(:past_compost)
  should allow_value("DK").for(:past_compost)

  should allow_value('Yes').for(:generate_toner_ink)
  should allow_value('No').for(:generate_toner_ink)
  should allow_value("DK").for(:generate_toner_ink)

  should allow_value('Yes').for(:recycle_toner_ink)
  should allow_value('No').for(:recycle_toner_ink)
  should allow_value("DK").for(:recycle_toner_ink)

  should allow_value('Yes').for(:generate_CFLs)
  should allow_value('No').for(:gen)
  should allow_value("DK").for(:generate_CFLs)

  should allow_value('Yes').for(:recycle_CFLs)
  should allow_value('No').for(:recycle_CFLs)
  should allow_value("DK").for(:recycle_CFLs)

  should allow_value('Yes').for(:generate_batteries)
  should allow_value('No').for(:generate_batteries)
  should allow_value("DK").for(:generate_batteries)

  should allow_value('Yes').for(:recycle_batteries)
  should allow_value('No').for(:recycle_batteries)
  should allow_value("DK").for(:recycle_batteries)

  should allow_value('Yes').for(:generate_computers)
  should allow_value('No').for(:generate_computers)
  should allow_value("DK").for(:generate_computers)

  should allow_value('Yes').for(:recycle_computers)
  should allow_value('No').for(:recycle_computers)
  should allow_value("DK").for(:recycle_computers)

  should allow_value('Yes').for(:generate_cellphones)
  should allow_value('No').for(:generate_cellphones)
  should allow_value("DK").for(:generate_cellphones)

  should allow_value('Yes').for(:recycle_cellphones)
  should allow_value('No').for(:recycle_cellphones)
  should allow_value("DK").for(:recycle_cellphones)

  should allow_value('Yes').for(:generate_tvs)
  should allow_value('No').for(:generate_tvs)
  should allow_value("DK").for(:generate_tvs)

  should allow_value('Yes').for(:recycle_tvs)
  should allow_value('No').for(:recycle_tvs)
  should allow_value("DK").for(:recycle_tvs)

  should allow_value('Yes').for(:generate_other_corded_equipment)
  should allow_value('No').for(:generate_other_corded_equipment)
  should allow_value("DK").for(:generate_other_corded_equipment)

  should allow_value('Yes').for(:recycle_other_corded_equipment)
  should allow_value('No').for(:recycle_other_corded_equipment)
  should allow_value("DK").for(:recycle_other_corded_equipment)

  should allow_value('Yes').for(:generate_furniture)
  should allow_value('No').for(:generate_furniture)
  should allow_value("DK").for(:generate_furniture)

  should allow_value('Yes').for(:recycle_furniture)
  should allow_value('No').for(:recycle_furniture)
  should allow_value("DK").for(:recycle_furniture)

  should allow_value('Yes').for(:generate_linens_uniforms)
  should allow_value('No').for(:generate_linens_uniforms)
  should allow_value("DK").for(:generate_linens_uniforms)

  should allow_value('Yes').for(:recycle_linens_uniforms)
  should allow_value('No').for(:recycle_linens_uniforms)
  should allow_value("DK").for(:recycle_linens_uniforms)

  should allow_value('Yes').for(:generate_construction_debris)
  should allow_value('No').for(:generate_construction_debris)
  should allow_value("DK").for(:generate_construction_debris)

  should allow_value('Yes').for(:recycle_construction_debris)
  should allow_value('No').for(:recycle_construction_debris)
  should allow_value("DK").for(:recycle_construction_debris)

  should allow_value('Yes').for(:generate_pallets)
  should allow_value('No').for(:generate_pallets)
  should allow_value("DK").for(:generate_pallets)

  should allow_value('Yes').for(:recycle_pallets)
  should allow_value('No').for(:recycle_pallets)
  should allow_value("DK").for(:recycle_pallets)

  should allow_value('Yes').for(:ZW_policy)
  should allow_value('No').for(:ZW_policy)
  should allow_value("DK").for(:ZW_policy)

  should allow_value('Yes').for(:LEED)
  should allow_value('No').for(:LEED)
  should allow_value("DK").for(:LEED)

  should allow_value('Yes').for(:recertify_LEED)
  should allow_value('No').for(:recertify_LEED)
  should allow_value("DK").for(:recertify_LEED)

  should allow_value('Yes').for(:requesting_audit_services)
  should allow_value('No').for(:requesting_audit_services)
  should allow_value("DK").for(:requesting_audit_services)


end
