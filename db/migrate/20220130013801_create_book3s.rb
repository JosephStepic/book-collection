class CreateBook3s < ActiveRecord::Migration[6.1]
  def change
    create_table :book3s do |t|
      t.string :title
      t.string :author
      t.float :price
      t.date :published_date

      t.timestamps
    end
  end
end
