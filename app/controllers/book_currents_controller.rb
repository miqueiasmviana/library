class BookCurrentsController < ApplicationController
  def index
    @book_currents = BookCurrent.all
  end

  def show
    @book_current = BookCurrent.find(params[:id])
  end

  def new
    @book_current = BookCurrent.new
  end

  def create
    @book_current = BookCurrent.new(book_current_params)

    if @book_current.save
      redirect_to @book_current
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book_current = BookCurrent.find(params[:id])
  end

  def update
    @book_current = BookCurrent.find(params[:id])

    if @book_current.update(book_current_params)
      redirect_to @book_current
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book_current = Book.find(params[:id])
    @book_current.destroy

    redirect_to book_current_path, status: :see_other
  end

  private

  def book_current_params
    params.require(:book_current).permit(:current_type)
  end
end
