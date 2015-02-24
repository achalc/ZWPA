class WalkthroughsController < ApplicationController
  before_action :set_walkthrough, only: [:show, :edit, :update, :destroy]

  # GET /walkthroughs
  # GET /walkthroughs.json
  def index
    @walkthroughs = Walkthrough.all
  end

  # GET /walkthroughs/1
  # GET /walkthroughs/1.json
  def show
  end

  # GET /walkthroughs/new
  def new
    @walkthrough = Walkthrough.new
  end

  # GET /walkthroughs/1/edit
  def edit
  end

  # POST /walkthroughs
  # POST /walkthroughs.json
  def create
    @walkthrough = Walkthrough.new(walkthrough_params)

    respond_to do |format|
      if @walkthrough.save
        format.html { redirect_to @walkthrough, notice: 'Walkthrough was successfully created.' }
        format.json { render action: 'show', status: :created, location: @walkthrough }
      else
        format.html { render action: 'new' }
        format.json { render json: @walkthrough.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walkthroughs/1
  # PATCH/PUT /walkthroughs/1.json
  def update
    respond_to do |format|
      if @walkthrough.update(walkthrough_params)
        format.html { redirect_to @walkthrough, notice: 'Walkthrough was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @walkthrough.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walkthroughs/1
  # DELETE /walkthroughs/1.json
  def destroy
    @walkthrough.destroy
    respond_to do |format|
      format.html { redirect_to walkthroughs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walkthrough
      @walkthrough = Walkthrough.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walkthrough_params
      params.require(:walkthrough).permit(:request_id, :square_footage, :num_floors, :max_occupancy, :other_businesses, :other_businesses_type, :ownership, :waste_disposal_contract, :waste_management_cost, :loading_dock, :freight_elevators, :storage_space, :storage_space_details, :trash_hauler, :trash_hauler_contract, :contract_available, :annual_record, :waste_storage, :waste_containers, :buy_recycled, :buy_recycled_details, :green_cleaning_products, :green_cleaning_details, :mandated_recycling, :recycling_program, :recycling_details, :recycling_stream, :recycling_stream_details, :discontinued_recycling, :current_compost, :past_compost, :generate_toner_ink, :recycle_toner_ink, :generate_CFLs, :recycle_CFLs, :generate_batteries, :recycle_batteries, :generate_computers, :recycle_computers, :generate_cellphones, :recycle_cellphones, :generate_tvs, :recycle_tvs, :generate_other_corded_equipment, :recycle_cellphones, :generate_furniture, :recycle_furniture, :generate_linens_uniforms, :recycle_linens_uniforms, :generate_construction_debris, :recycle_construction_debris, :generate_pallets, :recycle_pallets, :ZW_policy, :LEED, :recertify_LEED, :requesting_audit_services)
    end
end
