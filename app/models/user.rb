class User < ApplicationRecord
  has_one_attached :avatar
  has_many :blog_posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  def admin?
    self.admin
  end

  validates :nickname, presence: true, length: { in: 4..40 }
end
