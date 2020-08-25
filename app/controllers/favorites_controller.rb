class FavoritesController < ApplicationController

	before_action :ensure_contact_user

	def create
		favorite = current_user.favorites.new(book_id: @book.id)
		favorite.save
	end

	def destroy
		favorite = current_user.favorites.find_by(book_id: @book.id)
		favorite.destroy
	end

	private

	def ensure_contact_user
		@book = Book.find(params[:book_id])
	end
end
