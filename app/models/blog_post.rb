class BlogPost < ApplicationRecord
    validates :title, presence: true, length: { in: 5..70 }
    validates :content, presence: true, length: { in: 20..1500 }
end
