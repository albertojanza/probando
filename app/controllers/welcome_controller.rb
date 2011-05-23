class WelcomeController < ApplicationController

  def index
  end

  def alphabet
    if params[:id]
      @alphabet = Alphabet.where("id = ?",params[:id])
      @artists = @alphabet[0].artists
    else
      @artists = Artist.where("alphabet_id IS NULL")
    end
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
