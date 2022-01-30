require 'rails_helper'

RSpec.describe "book2s/new", type: :view do
  before(:each) do
    assign(:book2, Book2.new(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders new book2 form" do
    render

    assert_select "form[action=?][method=?]", book2s_path, "post" do

      assert_select "input[name=?]", "book2[title]"

      assert_select "input[name=?]", "book2[author]"

      assert_select "input[name=?]", "book2[price]"
    end
  end
end
