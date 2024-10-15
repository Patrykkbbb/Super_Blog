require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  it "a database exist" do 
    post = BlogPost.create!(
      title: "Hello!",
      content: "Hello" * 20,
      created_at: Time.current,
      updated_at: Time.current,
      views: 10,
    )
    expect(post).to be_valid
  end

  it "has a valid title" do 
    post = BlogPost.create!(
      title: "BlogPost Title",
      content: "Hello! its valid content" * 20,
      views: 10,
    )
     expect(post).to be_valid 
     post.title = "BlogPost Title" * 500
     expect(post).to_not be_valid
     post.title = "a" 
     expect(post).to_not be_valid 
     post.title = ""
     expect(post).to_not be_valid 
  end

  it "has a valid content" do 
    post = BlogPost.create!(
      title: "BlogPost Title",
      content: "Hello! its valid content" * 20,
      views: 10,
    )
     expect(post).to be_valid 
     post.content = "BlogPost content" * 1500
     expect(post).to_not be_valid
     post.content = " "
     expect(post).to_not be_valid 
     post.content = ""
     expect(post).to_not be_valid 
  end

  it "views is valid" do 
    numeric = BlogPost.create!(
      title: "BlogPost Tilte",
      content: "Hello! its valid content!" * 20,
      views: 10,
    )
    expect(numeric).to be_valid 
    numeric.views = 0
    expect(numeric).to_not be_valid
    numeric.views = 55000
    expect(numeric).to_not be_valid
    numeric.views = 99999
    expect(numeric).to_not be_valid
    numeric.views = -1
    expect(numeric).to_not be_valid
  end
end
