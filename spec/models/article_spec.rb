require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Article, type: :model do
  context 'associations' do
    it 'should belongs to a user' do
      t = Article.reflect_on_association(:author)
      expect(t.macro).to eq(:belongs_to)
    end

    it 'should have many votes' do
      t = Article.reflect_on_association(:votes)
      expect(t.macro).to eq(:has_many)
    end
    it 'should have many categories' do
      t = Article.reflect_on_association(:categories)
      expect(t.macro).to eq(:has_many)
    end
    it 'should have many organizations' do
      t = Article.reflect_on_association(:organizations)
      expect(t.macro).to eq(:has_many)
    end
  end
end
