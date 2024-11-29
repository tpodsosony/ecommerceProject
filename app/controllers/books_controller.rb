class BooksController < ApplicationController
  def index
    
      @q = Book.ransack(params[:q])
      @books = @q.result(distinct: true).page params[:page]
    
  end

  def show
    @book = Book.find(params[:id])
  end

  def search
    @books = @books.where("name LIKE ?", "%#{params[:query]}%")
  end


end
