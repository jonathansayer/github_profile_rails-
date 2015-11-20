class ProfilesController < ApplicationController

  def index

  end

  def search
    q = params[:profile][:name]
    @response = HTTParty.get('https://api.github.com/search/users?q=' + q )

  end

  def show
    @response = session[:response]
  end

end
