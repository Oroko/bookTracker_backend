class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name , :imageUrl
  has_many :books
end
