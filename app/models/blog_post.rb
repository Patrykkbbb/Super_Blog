class BlogPost < ApplicationRecord
    has_rich_text :content

    validates :title, presence: true, length: { in: 5..70 }
    validates :content, presence: true, length: { in: 20..1500 }
    validates :views, numericality: {default: "1".to_i , only_integer: true, greater_than: 0, less_than: 9999 }

end
