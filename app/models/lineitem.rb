class Lineitem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def quantity_price
    self.product.price * self.quantity
  end
end
