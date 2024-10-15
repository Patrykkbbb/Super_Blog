class BlogPost < ApplicationRecord
    has_rich_text :content

    validates :title, presence: true, length: { in: 5..70 }
    validates :content, presence: true, length: { in: 20..1500 }
end
