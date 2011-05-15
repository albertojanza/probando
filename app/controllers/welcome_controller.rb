class WelcomeController < ApplicationController

  def index
    render :text => "tomatoes restaurant" 
  end


  def developer_code
    if request.get?
      render "developer_code", :layout => nil 
    else 
      if params[:code].eql?("cuetara15")
        session[:developer_code] = true
        redirect_to root_path
      else
        render "developer_code", :layout => nil 
      end
    end

  end
end
