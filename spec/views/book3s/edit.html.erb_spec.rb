require 'rails_helper'

RSpec.describe "book3s/edit", type: :view do
  before(:each) do
    @book3 = assign(:book3, Book3.create!(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders the edit book3 form" do
    render

    assert_select "form[action=?][method=?]", book3_path(@book3), "post" do

      assert_select "input[name=?]", "book3[title]"

      assert_select "input[name=?]", "book3[author]"

      assert_select "input[name=?]", "book3[price]"
    end
  end
end
