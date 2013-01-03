class StoreController < ApplicationController

  def index
  	@products = Product.all
  	@cart = current_cart

  	@session_counter = session[:counter]
  	if @session_counter.nil?
  		@session_counter = 1
  	else
  		@session_counter += 1
  	end

  end
end
