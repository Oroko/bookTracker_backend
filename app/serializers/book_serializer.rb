class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :imgUrl, :status, :author_id, :author
  #belongs_to :author
end
