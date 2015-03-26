class HomeController < ApplicationController
  def index
  	@requests = Request.chronological.paginate(:page => params[:page], :per_page => 15)
  	@audits = Audit.chronological.paginate(:page => params[:page], :per_page => 20)
  end

  def help
  end
  
end
