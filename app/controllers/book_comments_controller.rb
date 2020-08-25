class BookCommentsController < ApplicationController

	before_action :ensure_contact_user

	def create
		comment = current_user.book_comments.new(book_comment_params)
		comment.book_id = @book.id
		comment.save
	end

	def destroy
		comment = current_user.book_comments.find_by(book_id: @book.id)
		comment.destroy
	end

	private

	def book_comment_params
		params.require(:book_comment).permit(:comment)
	end

	def ensure_contact_user
		@book = Book.find(params[:book_id])
	end
end
