class Book < ApplicationRecord

  belongs_to :book_current

  validates :cover, presence: true
  validates :title, presence: true
  validates :author, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :publish_company, presence: true
  validates :page, presence: true
  validates :year_publish, presence: true
end

