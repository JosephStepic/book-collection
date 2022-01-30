require 'rails_helper'

RSpec.describe "book_collections/new", type: :view do
  before(:each) do
    assign(:book_collection, BookCollection.new(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders new book_collection form" do
    render

    assert_select "form[action=?][method=?]", book_collections_path, "post" do

      assert_select "input[name=?]", "book_collection[title]"

      assert_select "input[name=?]", "book_collection[author]"

      assert_select "input[name=?]", "book_collection[price]"
    end
  end
end
