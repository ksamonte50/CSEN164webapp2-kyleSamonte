class Order < ApplicationRecord
    has_many(:lineitems, dependent: :destroy)
    validates(:name, :address, :email, presence: true)
    PAYMENT_TYPES = ["Check", "Credit Card", "Venmo", "PayPal"]
    validates(:paytype, inclusion: PAYMENT_TYPES)

    def add_parent_pointer_for_lineitems(cart_obj)
        cart_obj.lineitems.each do |item|
            item.order_id = self.id
            item.cart_id = nil
        end
    end
end
