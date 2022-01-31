# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'hairry potter'
		fill_in 'Author', with: 'jk'
		fill_in 'Price', with: '4'
		fill_in 'book_published_date_1i', with: '2017'
		fill_in 'book_published_date_2i', with: 'January'
		fill_in 'book_published_date_3i', with: '1'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('hairry potter', 'jk', '4', '2017', 'January', '1')
	end
end