require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "user exist" do 
  user = User.create!(
    email: "patryk2@example.com",
    password: "password",
    password_confirmation: "password",
    nickname = "username",
    first_name = "user",
    last_name = "name"
  )
  expect(user).to be_valid
  end
end
