class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :cover
      t.string :title
      t.string :author
      t.text :description
      t.string :genre
      t.string :publish_company
      t.integer :page
      t.integer :year_publish

      t.timestamps
    end
  end
end
