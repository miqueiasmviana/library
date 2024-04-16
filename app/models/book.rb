class Book < ApplicationRecord
  belongs_to :book_current

  validates :cover, :title, :author, :description, :genre, :publish_company, :page, :year_publish, :book_current_id, presence: true
end

