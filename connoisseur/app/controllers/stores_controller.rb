require 'json'
require 'open-uri'

class StoresController < ApplicationController
  def index
      stores_json = open('http://lcboapi.com/stores?per_page=30').read
      @stores = JSON.parse(stores_json)
  end

  def show
  	  stores_json = open("http://lcboapi.com/stores/#{params[:id]}").read        
      @stores = JSON.parse(stores_json)
  end
end
