class BlogpostFieldLengths < ActiveRecord::Migration[7.0]
  def change
    change_column :blog_posts, :image, :text, :limit => 1024
    change_column :blog_posts, :url, :text, :limit => 1024
  end
end
