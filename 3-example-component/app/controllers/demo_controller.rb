# encoding: utf-8
class DemoController < ApplicationController
  def show
  end
  
  def get_data
    fake_data = [
      "Adamov",
      "Albrechtice",
      "Benešov",
      "Bernartice", 
      "Chářovice",
      "Chleby"
    ]
    
    response = fake_data.select {|city| city.downcase.match(/^#{params[:query].downcase}/)} unless params[:query].blank?
    respond_to do |format|
      format.json { render :json => (response || []).to_json, :status => :ok }
    end
  end
end
