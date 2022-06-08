class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    if @range == "User"
      #@users_word =　"Books search for #{params[:word]}"
      @users = User.looks(params[:search], params[:word])
    else
      #@books_word = "Books search for #{params[:word]}"
      @books = Book.looks(params[:search], params[:word])
    end
    render "results"
  end

  def results
  end
end
