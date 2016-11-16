require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#it is running a spec to make sure the paths between layout, index, and result.
describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns the score') do
    visit('/')
    fill_in('title3', :with => 'hello')
    click_button('Submit')
    expect(page).to have_content(8)
  end
end
