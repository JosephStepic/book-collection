json.extract! book_collection, :id, :title, :author, :price, :published_date, :created_at, :updated_at
json.url book_collection_url(book_collection, format: :json)
