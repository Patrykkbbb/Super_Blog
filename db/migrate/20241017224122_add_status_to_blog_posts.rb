class AddStatusToBlogPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :blog_posts, :status, :string, default: 'pending'
  end
end
