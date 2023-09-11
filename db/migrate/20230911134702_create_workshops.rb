class CreateWorkshops < ActiveRecord::Migration[7.0]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :sub_title
      t.text :sub_content
      t.text :lerninhalte
      t.text :lernziele
      t.text :methode
      t.text :workshopdescription
      t.string :author
      t.string :category
      t.string :slug
      t.string :meta_title
      t.text :meta_description

      t.timestamps
    end
  end
end
