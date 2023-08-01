class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :content
      t.string :subtitle1
      t.text :subcontent
      t.string :author
      t.date :published_date
      t.string :category
      t.string :slug
      t.string :status

      t.timestamps
    end
  end
end
