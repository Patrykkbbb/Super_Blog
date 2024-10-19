class Comment < ApplicationRecord
  belongs_to :blog_post
  belongs_to :user

  validates :body, presence: true, length: { in: 2..500 }
end
