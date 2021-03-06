class Api::V1::BooksController < ApplicationController
	def index 
		books = Book.all 
		# render json: books
		# options = {
		# 	include: [:author]
		# }
		render json: BookSerializer.new(books)
	end

	def create 
		book = Book.new(book_params)
		if book.save 
			render json: book, status: :accepted
		else
			render json: {errors: book.errors.full_messages}, status: :unprocessable_entity
		end
	end

	private 

	def book_params 
		params.require(:book).permit(:title, :genre, :imgUrl, :status, :author_id)
	end
end
