class BookCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    # したがいつもの記述
    # comment = BookComment.new(book_comment_params)
    # comment.user_id = current_user.id
    comment.book_id = @book.id
    comment.save
    @comments = @book.book_comments
  end

  def destroy
    @book = Book.find(params[:book_id])
    BookComment.find(params[:id]).destroy
    @comments = @book.book_comments
  end


  private
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
