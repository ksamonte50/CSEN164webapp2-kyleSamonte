class ShopperController < ApplicationController
  def index
    @products_list = Product.order(:name)
  end
end
