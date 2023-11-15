# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Creating restaurants...'
le_gavroche = { name: 'Le Gavroche', address: '43 Upper Brook St, London W1K 7QR', phone_number: '02074080881', category: 'french' }
locanda_locatelli =  { name: 'Locanda Locatelli', address: '8 Seymour St, London W1H 7JZ', phone_number: '02079359088', category: 'italian' }
lowlander = { name: 'Lowlander', address: '36 Drury Ln, London WC2B 5RR', phone_number: '02073797446', category: 'belgian' }
the_araki = { name: 'The Araki', address: '12 New Burlington St, London W1S 3BF', phone_number: '02072872481', category: 'japanese' }
hakkasan = { name: 'Hakkasan', address: '17 Bruton St, London W1J 6QB', phone_number: '02079071888', category: 'chinese' }

[le_gavroche, locanda_locatelli, lowlander, the_araki, hakkasan].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
