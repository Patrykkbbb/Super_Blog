class RemoveAdminFromBlogPosts < ActiveRecord::Migration[7.2]
  def change
    remove_column :blog_posts, :admin_id
  end
end
