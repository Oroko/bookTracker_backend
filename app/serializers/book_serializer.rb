class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :imgUrl, :status, :author_id
  belongs_to :author
end
