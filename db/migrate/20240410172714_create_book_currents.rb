class CreateBookCurrents < ActiveRecord::Migration[7.1]
  def change
    create_table :book_currents do |t|
      t.string :current_type

      t.timestamps
    end
  end
end
