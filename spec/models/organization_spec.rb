require 'rails_helper'
require 'capybara/rspec'
RSpec.describe Organization, type: :model do
  context 'associations' do
    it 'should belongs to an article' do
      t = Organization.reflect_on_association(:article)
      expect(t.macro).to eq(:belongs_to)
    end
    it 'should belongs to a category' do
      t = Organization.reflect_on_association(:category)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
