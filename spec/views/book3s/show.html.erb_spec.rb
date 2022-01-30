require 'rails_helper'

RSpec.describe "book3s/show", type: :view do
  before(:each) do
    @book3 = assign(:book3, Book3.create!(
      title: "Title",
      author: "Author",
      price: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/2.5/)
  end
end
