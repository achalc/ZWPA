class AuditsController < ApplicationController
  before_action :set_audit, only: [:show, :edit, :update, :destroy]

  # GET /audits
  # GET /audits.json
  def index
    @audits = Audit.all
  end

  # GET /audits/1
  # GET /audits/1.json
  def show
  end

  # GET /audits/new
  def new
    @audit = Audit.new
    @req = Request.find_by_id(params[:request_id])
    @audit.request_id = @req.id
    # @audit.wastes.build    
    # @waste = Waste.new
  end

  # GET /audits/1/edit
  def edit
  end

  # POST /audits
  # POST /audits.json
  def create
    @audit = Audit.new(audit_params)

    # @waste.audit_id = @audit.id

    respond_to do |format|
      if @audit.save
        format.html { redirect_to @audit, notice: 'Audit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @audit }
      else
        format.html { render action: 'new' }
        format.json { render json: @audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audits/1
  # PATCH/PUT /audits/1.json
  def update
    respond_to do |format|
      if @audit.update(audit_params)
        format.html { redirect_to @audit, notice: 'Audit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audits/1
  # DELETE /audits/1.json
  def destroy
    @audit.destroy
    respond_to do |format|
      format.html { redirect_to audits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit
      @audit = Audit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audit_params
      params.require(:audit).permit(:request_id, :date, :time_period, :generator, :location, wastes_attributes: [:id, :material_type, :weight, :origin])
    end

end
