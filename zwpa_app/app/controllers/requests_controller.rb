class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.chronological.paginate(:page => params[:page]).per_page(10)
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @walkthroughs = @request.walkthroughs.to_a
    @audits = @request.audits.to_a
    @documents = @walkthroughs + @audits
    @documents = @documents.sort_by(&:created_at)
    @notes = @request.notes.chronological 
  end

  # GET /requests/new
  def new
    @request = Request.new
    @cus = Customer.find_by_id(params[:customer_id])
    @request.customer_id = @cus.id
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @request }
      else
        format.html { render action: 'new' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:customer_id, :contact_firstname, :contact_lastname, :title, :email, :phone, :street_address, :city, :state, :date, :Note, :request_id, :photo, :description)
    end
end
