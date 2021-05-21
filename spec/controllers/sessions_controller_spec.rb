require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'Login fields', type: :feature do
  describe 'fields in login page' do
    it 'name field in login page' do
      visit login_path
      expect(page).to have_content 'Name'
    end
  end
end
