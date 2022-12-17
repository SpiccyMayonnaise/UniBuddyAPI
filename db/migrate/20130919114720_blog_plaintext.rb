class BlogPlaintext < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :plaintext, :text
  end
end
