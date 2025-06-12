class Product < ApplicationRecord
    # Constraints
    validates(:name, :description, :image, :price, presence: true)
    validates(:price, numericality: { greater_than_or_equal_to: 0.01 })
    validates(:image, format: {with: %r{\.(png|jpg|jpeg|gif)\Z}, message: "must be a valid image format (png, jpg, jpeg, gif)"})
    validates(:name, uniqueness: true)
end
