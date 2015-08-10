require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe ('the price path', {:type => :feature}) do
  it('determines the price of shipping the parcel') do
    visit('/')
    fill_in('length', :with => 96)
    fill_in('width', :with => 36)
    fill_in('height', :with => 36)
    fill_in('weight', :with => 275)
    click_button('submit')
    expect(page).to have_content('')
