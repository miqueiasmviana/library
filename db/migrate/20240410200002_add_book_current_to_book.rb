class AddBookCurrentToBook < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :book_current, foreign_key: true
  end
end
