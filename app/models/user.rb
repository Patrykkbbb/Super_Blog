class User < ApplicationRecord
  has_one_attached :avatar
  has_many :blog_posts
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :nickname, presence: true, length: { in: 4..40 }
end
