class BlogPost < ApplicationRecord
    has_rich_text :content
    has_one_attached :post_image

    has_many :comments, dependent: :destroy
    belongs_to :user

    VALID_STATUSES = ['published','pending']
    validates :title, presence: true, length: { in: 5..70 }
    validates :content, presence: true, length: { in: 20..1500 }
    validates :views, numericality: {default: "1".to_i , only_integer: true, greater_than: 0, less_than: 9999 }
    validates :status, inclusion: { in: VALID_STATUSES }



    scope :sorted, -> {order(updated_at: :asc)}

    def self.ransackable_attributes(auth_object = nil)
        ["content", "created_at", "id", "id_value", "status", "title", "updated_at", "user_id", "views"]
    end
    
end
