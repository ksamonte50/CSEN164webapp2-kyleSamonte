# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.delete_all
Product.create!(
    name: "Nike Air Max 1",
    description: "The Nike Air Max 270 is a stylish and comfortable sneaker that features a large Air unit for maximum cushioning.",
    image: 'AM1.jpg',
    price: 150.00
)

Product.create!(
    name: "Air Jordan 1 Retro High OG",
    description: "The Air Jordan 1 Retro High OG is a classic sneaker that features a high-top design and premium materials.",
    image: 'AJ1.jpg',
    price: 180.00
)

Product.create!(
    name: "New Balance 990v5",
    description: "The New Balance 990v5 is a comfortable and supportive sneaker that features a classic design and premium materials.",
    image: 'NB990.jpg',
    price: 185.00
)
