require 'json'
require 'open-uri'

class ProductsController < ApplicationController
  def index
      products_json = open('http://lcboapi.com/products').read
      @products = JSON.parse(products_json)
  end

  def show
      json = JSON.parse(open("html:://lcboapi.com/products/#{params[:id]}/inventory"))
  end

end
