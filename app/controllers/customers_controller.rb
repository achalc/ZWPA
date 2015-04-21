class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.alphabetical.paginate(:page => params[:page]).per_page(10)
  end

  def show
    @requests = @customer.requests.paginate(:page => params[:page]).per_page(10)
  end

  def new
    @customer = Customer.new
    @cus_id = (Customer.all.count + 1)
    @customer.requests.build
    @req = Request.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    # set user id to always be one because there is only one username/pw to login with
    @customer[:user_id] = 1

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: "#{@customer.company_name} was added to the ZWPA system." }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        # format.html { render action: 'new' }
        flash.keep[:notice] = @customer.errors
        format.html { redirect_to controller: 'customers', action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "#{@customer.company_name} was successfully updated." }
        format.json { head :no_content }
      else
        flash.keep[:notice] = @customer.errors
        format.html { redirect_to controller: 'customers', action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:user_id, :company_name, requests_attributes: [:id, :customer_id, :contact_firstname, :contact_lastname, :title, :email, :phone, :street_address, :city, :date, :zip_code])
    end

end
