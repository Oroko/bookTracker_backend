class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name , :imageUrl, :books
  #has_many :books
end
