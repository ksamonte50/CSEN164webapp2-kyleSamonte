class ShopperController < ApplicationController
  include(CurrentCart)
  before_action(:set_cart)

  def index
    @products_list = if params[:search]
      Product.where('name LIKE ? OR description LIKE ? OR price LIKE ?', 
                   "%#{params[:search]}%", 
                   "%#{params[:search]}%",
                   "%#{params[:search]}%").order(:name)
    else
      Product.order(:name)
    end
  end
end
