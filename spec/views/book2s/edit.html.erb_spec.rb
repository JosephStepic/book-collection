require 'rails_helper'

RSpec.describe "book2s/edit", type: :view do
  before(:each) do
    @book2 = assign(:book2, Book2.create!(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders the edit book2 form" do
    render

    assert_select "form[action=?][method=?]", book2_path(@book2), "post" do

      assert_select "input[name=?]", "book2[title]"

      assert_select "input[name=?]", "book2[author]"

      assert_select "input[name=?]", "book2[price]"
    end
  end
end
