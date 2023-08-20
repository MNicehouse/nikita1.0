class AddMetadataToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :meta_title, :string
    add_column :blog_posts, :meta_description, :text
  end
end
