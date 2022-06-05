class FavoritesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    # paramsをbook_idとすることで保存先を特定のbookに指定する
    favorite = current_user.favorites.new(book_id: book.id)
    # current_user が新しい　favorite　を　（book_idの中のbook.idに）作ったのが＠favorite
    favorite.save
    # 現在のページを読み込み直す　redirect_back
    redirect_to request.referer
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: book.id)
    favorite.destroy
    redirect_to request.referer
    # redirect_back(fallback_location: root_path)
  end
end
