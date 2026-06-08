# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data to avoid duplicates
EditorialAssignment.destroy_all
Post.destroy_all
User.destroy_all

ammar = User.create!(name: "ammar khaled", email: "ammar@gmail.com")
ahmed = User.create!(name: "ahmed ibraheem", email: "ahmed@gmail.com")
mahmoud = User.create!(name: "mahmoud gamal", email: "mahmoud@gmail.com")


post1 = Post.create!(title: "Ruby on Rails", content: "Ruby on Rails", creator: ammar)
post2 = Post.create!(title: "CRUD", content: "CRUD", creator: ahmed)

post1.editors << [ahmed, mahmoud]

post2.editors << [ammar, mahmoud]

puts "Seeding completed"