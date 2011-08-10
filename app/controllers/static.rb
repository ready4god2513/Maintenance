class StaticController < ApplicationController
  
  def maintenance
    render :status => 503, :template => "maintenance"
  end
  
end