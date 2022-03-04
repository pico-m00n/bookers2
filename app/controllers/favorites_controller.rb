class FavoritesController < ApplicationController
  def create
    book=Book.find(paramas[:post_image_id])
    favorite=current_user.favorites.new(book_id: book_id)
    favorite.save
    redirect_to books_path(book)
  end

  def destroy
    book=book.find(paramas[:book_id])
    favorite=current_user.favorites.find_by(book_id: book_id)
    favorite.destroy
    redirect_to books_path(book)
  end
end
