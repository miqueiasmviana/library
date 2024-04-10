class BookCurrentsController < ApplicationController
  def index
    @book_currents = BookCurrent.all
  end

  def show
    @book_currents = BookCurrent.find(params[:id])
  end
end
