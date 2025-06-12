class Cart < ApplicationRecord
    has_many(:lineitems, dependent: :destroy)

    def add_item(productid)
        item = self.lineitems.find_by(product_id: productid)
        if item
            item.quantity += 1
            item.save
        else
            item = self.lineitems.build(product_id: productid)
        end
        item
    end

    # Calculate total price of all items in the cart
    def total_price
        self.lineitems.to_a.sum { |item| item.quantity_price }
    end
end