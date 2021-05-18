class Api::V1::AuthorsController < ApplicationController
  def index
  	authors = Author.all 
  	options = {
  		include: [:books]
  	}
  	render json: AuthorSerializer.new(authors, options)
  end

  def show
  	author = Author.find_by(params[:id])
  	render json: AuthorSerializer.new(author)

  end
end
