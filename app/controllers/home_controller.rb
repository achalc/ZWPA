class HomeController < ApplicationController
  def index
  	@requests = Request.chronological.paginate(:page => params[:page], :per_page => 10)
  	@audits = Audit.chronological.paginate(:page => params[:page], :per_page => 15)
  end

  def help
  end
  
end
