class CurrentReadingController < ApplicationController
  def index
    @current_readings = Book.joins(:book_current).where(book_current: { current_type: 'Current Reading' })
  end
end


  
