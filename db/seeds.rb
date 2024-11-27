# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Peron", address: "56 Cor Président John Fitzgerald Kennedy", category: "french")
puts "Created Peron"
Restaurant.create!(name: "cote sushi", address: "109 Rue de la République", category: "chinese")
puts "Created cote sushi"
Restaurant.create!(name: "Quick", address: "31 Quai des Belges,", category: "french")
puts "Created Quick"
Restaurant.create!(name: "Chez Hervé", address: "4 Montée Commandant de Robien", category: "japanese")
puts "Created Chez Hervé"
Restaurant.create!(name: "Chez Paul", address: "35 Rue Désiré Pelaprat", category: "french")
puts "Created Chez Paul"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
