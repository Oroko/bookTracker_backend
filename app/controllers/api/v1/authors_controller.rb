class Api::V1::AuthorsController < ApplicationController
  def index
  	authors = Author.all 
  	
  	render json: AuthorSerializer.new(authors)
  end

  def show
  	author = Author.find_by(id: params[:id])
  	options = {
  		include: [:books]
  	}
  	render json: AuthorSerializer.new(author, options)

  end
end
