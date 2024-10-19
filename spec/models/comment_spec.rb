require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "Comment should be valid" do 
    user = User.first_or_create!(nickname: "Patryk", email: "ex2@ample.com", password: "123456", password_confirmation: "123456")
    post = BlogPost.first_or_create!(id: "8", title: "Title", content: "Post content", user: user, views: "13", created_at: Time.current, updated_at: Time.current)
    comment = Comment.create!(commenter: "Patryk", body: "Hello world", blog_post: post, user: user)
    expect(comment).to be_valid
    comment.body = ""
    expect(comment).to_not be_valid
    comment.body = "abc" * 500
    expect(comment).to_not be_valid
    comment.body = 1
    expect(comment).to_not be_valid
  end 
end
