class WantToReadController < ApplicationController
  def index
    @want_to_reads = Book.joins(:book_current).where(book_current: { current_type: 'Want to Read' })
  end
end
