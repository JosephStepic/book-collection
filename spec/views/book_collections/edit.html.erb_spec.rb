require 'rails_helper'

RSpec.describe "book_collections/edit", type: :view do
  before(:each) do
    @book_collection = assign(:book_collection, BookCollection.create!(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders the edit book_collection form" do
    render

    assert_select "form[action=?][method=?]", book_collection_path(@book_collection), "post" do

      assert_select "input[name=?]", "book_collection[title]"

      assert_select "input[name=?]", "book_collection[author]"

      assert_select "input[name=?]", "book_collection[price]"
    end
  end
end
