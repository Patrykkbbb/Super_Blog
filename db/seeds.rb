# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create!(id: "1001", nickname: "Admin", email: "admin@superblog.com",confirmed_at: Time.now,  password: "123456", password_confirmation: "123456", admin: true)
User.create!(id: "1002", nickname: "User1", email: "user1@superblog.com",confirmed_at: Time.now,  password: "123456", password_confirmation: "123456", admin: false)
User.create!(id: "1003", nickname: "User2", email: "user2@superblog.com",confirmed_at: Time.now,  password: "123456", password_confirmation: "123456", admin: false)
User.create!(id: "1004", nickname: "User3", email: "user3@superblog.com",confirmed_at: Time.now,  password: "123456", password_confirmation: "123456", admin: false)

100.times do |a|
    a += 1
    BlogPost.create!(title: "Post nr. #{a}", content: " Lorem ipsum dolor sit pharetra aliquam. Aliquam erat volutpat. Donec ac maximus nunc. Vivamus semper feugiat enim, sed vulputate urna. Proin rhoncus porttitor ante, sed commodo elit accumsan eu. Nullam interdum ultrices ex, vitae molestie neque consequat nec. Maecenas pretium nunc a volutpat varius. Nullam tellus felis, scelerisque vitae consequat sodales, rhoncus at nunc. Aenean imperdiet orci auctor est dapibus luctus. ", created_at: Time.current, views: "1", status: "published", user_id: "1001" )
end

