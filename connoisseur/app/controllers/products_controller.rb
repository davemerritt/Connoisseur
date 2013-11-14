require 'json'
require 'open-uri'

class ProductsController < ApplicationController
  
  def index
      products_json = open('http://lcboapi.com/products?per_page=30').read
      @products = JSON.parse(products_json)
  end

  def show
      products_json = open("http://lcboapi.com/products/#{params[:id]}").read        
      @products = JSON.parse(products_json)
  end

end
