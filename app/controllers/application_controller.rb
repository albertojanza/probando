class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :under_construction, :except => "developer_code"

  def under_construction
    
    redirect_to :controller => "welcome", :action => "developer_code", :method => "get" if session[:developer_code].nil?

  end

end
