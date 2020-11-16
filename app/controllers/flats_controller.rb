require "open-uri"

class FlatsController < ApplicationController
  def index
  	@flats = api_call
  end

  def show
  	flats = api_call
  	@flat = flats.find { |flat| flat["id"] == params["id"].to_i }
  end

  def api_call
  	url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
		flats = JSON.parse(open(url).read)
  end 
end
