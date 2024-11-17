class BooksController < ApplicationController
  def index
    @books = Book.order(:author).page params[:page]
  end

  def show
    @book = Book.find(params[:id])
  end
end
