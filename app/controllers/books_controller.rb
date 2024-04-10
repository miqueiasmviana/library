class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_book_current_options, only: [:new, :edit]

  def index
    @books = Book.all
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy

    redirect_to book_path, status: :see_other
  end

  private
  
  def book_params
    params.require(:book).permit(:cover, :title, :author, :description, :genre, :publish_company, :page, :year_publish, :book_current_id)
  end

  def set_book_current_options
      @book_current_options = BookCurrent.all.pluck(:current_type, :id)
  end
end
