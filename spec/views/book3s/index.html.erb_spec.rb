require 'rails_helper'

RSpec.describe "book3s/index", type: :view do
  before(:each) do
    assign(:book3s, [
      Book3.create!(
        title: "Title",
        author: "Author",
        price: 2.5
      ),
      Book3.create!(
        title: "Title",
        author: "Author",
        price: 2.5
      )
    ])
  end

  it "renders a list of book3s" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
  end
end
