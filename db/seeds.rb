# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

['Felipe', 'Ulises', 'Hajnal'].each do |name|
  User.find_or_create_by!(name: name)
end

[
  { name: 'Fishing Boat', description: 'Fishing boats are used on saltwater and freshwater bodies and come in various sizes.', price: 8000, color: 'Red', rent_price: 100, user: User.find_by(name: 'Felipe'), picture: 'https://stylesatlife.com/wp-content/uploads/2022/07/Fishing-Boat.jpg' },
  { name: 'Yacht', description: 'A yacht is a type of boat that epitomizes fun and luxury, which has been developed for recreational use and is essentially a fancy motorboat.', price: 250000, color: 'White', rent_price: 1000, user: User.find_by(name: 'Hajnal'), picture: 'https://stylesatlife.com/wp-content/uploads/2022/07/yacht.jpg' },
  { name: 'Deck Boat', description: 'As the name suggests, a boat with ample od deck space is called a Deck boat.', price: 20000, color: 'White', rent_price: 250, user: User.find_by(name: 'Ulises'), picture: 'https://stylesatlife.com/wp-content/uploads/2022/07/Deck-boat.jpg' },
  { name: 'Houseboat', description: 'A boat designed or modified to be used primarily as a home is called a houseboat.', price: 70000, color: 'Red', rent_price: 400, user: User.find_by(name: 'Hajnal'), picture: 'https://stylesatlife.com/wp-content/uploads/2022/07/houseboats.jpg' },
  { name: 'Sail Boat', description: 'For as long as there were sailors, there were sailboats with variations in design from time to time.', price: 90000, color: 'Grey', rent_price: 500, user: User.find_by(name: 'Felipe'), picture: 'https://stylesatlife.com/wp-content/uploads/2022/07/Sail-boats.jpg' },
  { name: 'Pontoon', description: 'Pontoon is a luxurious pleasure boat that acquired a significant appeal from being an unsightly boxy watercraft.', price: 70000, color: 'Blue', rent_price: 300, user: User.find_by(name: 'Ulises'), picture: 'https://stylesatlife.com/wp-content/uploads/2022/07/Pontoon.jpg' },
].each do |boat_attributes|
  Boat.find_or_create_by!(boat_attributes)
end
