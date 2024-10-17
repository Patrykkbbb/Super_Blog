require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "admin fields be valid" do
    admin = Admin.create!(
    email: "admin@example.com",
    password: "password",
    password_confirmation: "password"
    ) 
    expect(admin).to be_valid 
    admin.nickname = "admin"
    expect(admin).to be_valid
    admin.first_name = "admin"
    expect(admin).to be_valid
    admin.last_name = "admin"
    expect(admin).to be_valid
  end
end
