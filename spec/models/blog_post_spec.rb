require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  it "a database exist" do 
    post = BlogPost.create!(
      title: "My Post",
      content: "Hello",
      created_at: Time.current,
      updated_at: Time.current
    )
    expect(post).to be_valid
  end
end
