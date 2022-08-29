class AuthorsController < ApplicationController
  before_action :get_book, only: [:show]

  def index
    @authors = Author.all
    @books = Book.all
  end

  def show
    @auth = Author.find(params[:id])
    #@author = Author.find(params[:id]).books
  end

  private

  def get_book
    @book = Book.find(params[:id])
  end

end
