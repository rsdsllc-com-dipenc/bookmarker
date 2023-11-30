require 'rails_helper'

# System test: Rspec will load Capybara and use the browser to run it
RSpec.describe 'Static content', type: :system do
  # expect() assertion will only works inside a it or scenario block
  it 'shows the static text' do
    # tell the browser to navigate to the static_index_path
    visit static_index_path
    # have_content method here is provided by Capybara
    # Tell Rspec to ensure the current page loaded (the special page variable), has the text 'Hello world'
    expect(page).to have_content('Hello world')
  end
end
