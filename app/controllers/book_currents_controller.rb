class BookCurrentsController < ApplicationController
  before_action :set_book_current, only: [:show, :edit, :update, :destroy]

  def index
    @book_currents = BookCurrent.all
  end

  def show; end

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

  def edit; end

  def update
    if @book_current.update(book_current_params)
      redirect_to @book_current
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book_current.destroy

    redirect_to book_current_path, status: :see_other
  end

  private

  def set_book_current
    @book_current = BookCurrent.find(params[:id])
  end

  def book_current_params
    params.require(:book_current).permit(:current_type)
  end
end
