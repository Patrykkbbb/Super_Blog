require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "nickname should be valid" do 
  user = User.create!(
    email: "patryk2@example.com",
    password: "password",
    password_confirmation: "password",
    nickname: "username",
    first_name: "user",
    last_name: "name"
  )
  expect(user).to be_valid
  user.nickname = ""
  expect(user).to_not be_valid 
  user.nickname = "a" * 500
  expect(user).to_not be_valid
  user.nickname = "a"
  expect(user).to_not be_valid
  end
end
