class FinishedController < ApplicationController
  def index
    @finisheds = Book.joins(:book_current).where(book_current: { current_type: 'Finished' })
  end
end
