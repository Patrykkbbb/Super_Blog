class ChangeStatusInBlogPosts < ActiveRecord::Migration[7.2]
  def change
    change_column :blog_posts, :status, :string, default: "pending"
  end
end
