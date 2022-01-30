class CreateBookCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :book_collections do |t|
      t.string :title
      t.string :author
      t.float :price
      t.date :published_date

      t.timestamps
    end
  end
end
