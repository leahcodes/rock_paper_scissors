require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rps path', {:type => :feature}) do
  it('processes the user entries and returns the result') do
    visit('/')
    fill_in('player1', :with => 'r')
    fill_in('player2', :with => 's')
    click_button('Play!')
    expect(page).to have_content('Player 1 wins!')
  end
end
