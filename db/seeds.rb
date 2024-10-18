# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

100.times do |b|
    b = 0
    BlogPost.create!(title: "Test#{b}", content: "pagination_test " * 4, user_id: "1", status: "Opublikowany", views: 1)
    b += 1
end
