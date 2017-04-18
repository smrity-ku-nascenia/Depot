class StoreController < ApplicationController

  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
      @products = Product.all
      @cart = current_cart
      if session[:counter].nil?
        session[:counter] = 0
      else
        session[:counter] += 1
      end
    end
  end
end
