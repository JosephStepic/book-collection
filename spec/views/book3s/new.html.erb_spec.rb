require 'rails_helper'

RSpec.describe "book3s/new", type: :view do
  before(:each) do
    assign(:book3, Book3.new(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders new book3 form" do
    render

    assert_select "form[action=?][method=?]", book3s_path, "post" do

      assert_select "input[name=?]", "book3[title]"

      assert_select "input[name=?]", "book3[author]"

      assert_select "input[name=?]", "book3[price]"
    end
  end
end
