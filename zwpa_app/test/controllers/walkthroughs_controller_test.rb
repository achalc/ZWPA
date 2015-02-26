require 'test_helper'

class WalkthroughsControllerTest < ActionController::TestCase
  setup do
    @walkthrough = walkthroughs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walkthroughs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walkthrough" do
    assert_difference('Walkthrough.count') do
      post :create, walkthrough: { LEED: @walkthrough.LEED, ZW_policy: @walkthrough.ZW_policy, annual_record: @walkthrough.annual_record, buy_recycled: @walkthrough.buy_recycled, buy_recycled_details: @walkthrough.buy_recycled_details, contract_available: @walkthrough.contract_available, current_compost: @walkthrough.current_compost, discontinued_recycling: @walkthrough.discontinued_recycling, freight_elevators: @walkthrough.freight_elevators, generate_CFLs: @walkthrough.generate_CFLs, generate_batteries: @walkthrough.generate_batteries, generate_cellphones: @walkthrough.generate_cellphones, generate_computers: @walkthrough.generate_computers, generate_construction_debris: @walkthrough.generate_construction_debris, generate_furniture: @walkthrough.generate_furniture, generate_linens_uniforms: @walkthrough.generate_linens_uniforms, generate_other_corded_equipment: @walkthrough.generate_other_corded_equipment, generate_pallets: @walkthrough.generate_pallets, generate_toner_ink: @walkthrough.generate_toner_ink, generate_tvs: @walkthrough.generate_tvs, green_cleaning_details: @walkthrough.green_cleaning_details, green_cleaning_products: @walkthrough.green_cleaning_products, loading_dock: @walkthrough.loading_dock, mandated_recycling: @walkthrough.mandated_recycling, max_occupancy: @walkthrough.max_occupancy, num_floors: @walkthrough.num_floors, other_businesses: @walkthrough.other_businesses, other_businesses_type: @walkthrough.other_businesses_type, ownership: @walkthrough.ownership, past_compost: @walkthrough.past_compost, recertify_LEED: @walkthrough.recertify_LEED, recycle_CFLs: @walkthrough.recycle_CFLs, recycle_batteries: @walkthrough.recycle_batteries, recycle_cellphones: @walkthrough.recycle_cellphones, recycle_cellphones: @walkthrough.recycle_cellphones, recycle_computers: @walkthrough.recycle_computers, recycle_construction_debris: @walkthrough.recycle_construction_debris, recycle_furniture: @walkthrough.recycle_furniture, recycle_linens_uniforms: @walkthrough.recycle_linens_uniforms, recycle_pallets: @walkthrough.recycle_pallets, recycle_toner_ink: @walkthrough.recycle_toner_ink, recycle_tvs: @walkthrough.recycle_tvs, recycling_details: @walkthrough.recycling_details, recycling_program: @walkthrough.recycling_program, recycling_stream: @walkthrough.recycling_stream, recycling_stream_details: @walkthrough.recycling_stream_details, request_id: @walkthrough.request_id, requesting_audit_services: @walkthrough.requesting_audit_services, square_footage: @walkthrough.square_footage, storage_space: @walkthrough.storage_space, storage_space_details: @walkthrough.storage_space_details, trash_hauler: @walkthrough.trash_hauler, trash_hauler_contract: @walkthrough.trash_hauler_contract, waste_containers: @walkthrough.waste_containers, waste_disposal_contract: @walkthrough.waste_disposal_contract, waste_management_cost: @walkthrough.waste_management_cost, waste_storage: @walkthrough.waste_storage }
    end

    assert_redirected_to walkthrough_path(assigns(:walkthrough))
  end

  test "should show walkthrough" do
    get :show, id: @walkthrough
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walkthrough
    assert_response :success
  end

  test "should update walkthrough" do
    patch :update, id: @walkthrough, walkthrough: { LEED: @walkthrough.LEED, ZW_policy: @walkthrough.ZW_policy, annual_record: @walkthrough.annual_record, buy_recycled: @walkthrough.buy_recycled, buy_recycled_details: @walkthrough.buy_recycled_details, contract_available: @walkthrough.contract_available, current_compost: @walkthrough.current_compost, discontinued_recycling: @walkthrough.discontinued_recycling, freight_elevators: @walkthrough.freight_elevators, generate_CFLs: @walkthrough.generate_CFLs, generate_batteries: @walkthrough.generate_batteries, generate_cellphones: @walkthrough.generate_cellphones, generate_computers: @walkthrough.generate_computers, generate_construction_debris: @walkthrough.generate_construction_debris, generate_furniture: @walkthrough.generate_furniture, generate_linens_uniforms: @walkthrough.generate_linens_uniforms, generate_other_corded_equipment: @walkthrough.generate_other_corded_equipment, generate_pallets: @walkthrough.generate_pallets, generate_toner_ink: @walkthrough.generate_toner_ink, generate_tvs: @walkthrough.generate_tvs, green_cleaning_details: @walkthrough.green_cleaning_details, green_cleaning_products: @walkthrough.green_cleaning_products, loading_dock: @walkthrough.loading_dock, mandated_recycling: @walkthrough.mandated_recycling, max_occupancy: @walkthrough.max_occupancy, num_floors: @walkthrough.num_floors, other_businesses: @walkthrough.other_businesses, other_businesses_type: @walkthrough.other_businesses_type, ownership: @walkthrough.ownership, past_compost: @walkthrough.past_compost, recertify_LEED: @walkthrough.recertify_LEED, recycle_CFLs: @walkthrough.recycle_CFLs, recycle_batteries: @walkthrough.recycle_batteries, recycle_cellphones: @walkthrough.recycle_cellphones, recycle_cellphones: @walkthrough.recycle_cellphones, recycle_computers: @walkthrough.recycle_computers, recycle_construction_debris: @walkthrough.recycle_construction_debris, recycle_furniture: @walkthrough.recycle_furniture, recycle_linens_uniforms: @walkthrough.recycle_linens_uniforms, recycle_pallets: @walkthrough.recycle_pallets, recycle_toner_ink: @walkthrough.recycle_toner_ink, recycle_tvs: @walkthrough.recycle_tvs, recycling_details: @walkthrough.recycling_details, recycling_program: @walkthrough.recycling_program, recycling_stream: @walkthrough.recycling_stream, recycling_stream_details: @walkthrough.recycling_stream_details, request_id: @walkthrough.request_id, requesting_audit_services: @walkthrough.requesting_audit_services, square_footage: @walkthrough.square_footage, storage_space: @walkthrough.storage_space, storage_space_details: @walkthrough.storage_space_details, trash_hauler: @walkthrough.trash_hauler, trash_hauler_contract: @walkthrough.trash_hauler_contract, waste_containers: @walkthrough.waste_containers, waste_disposal_contract: @walkthrough.waste_disposal_contract, waste_management_cost: @walkthrough.waste_management_cost, waste_storage: @walkthrough.waste_storage }
    assert_redirected_to walkthrough_path(assigns(:walkthrough))
  end

  test "should destroy walkthrough" do
    assert_difference('Walkthrough.count', -1) do
      delete :destroy, id: @walkthrough
    end

    assert_redirected_to walkthroughs_path
  end
end
