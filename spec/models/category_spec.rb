require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'associations' do
    it 'should have many articles through categorization' do
      t = Category.reflect_on_association(:articles)
      expect(t.macro).to eq(:has_many)
    end

    it 'should have many organizations' do
      t = Article.reflect_on_association(:organizations)
      expect(t.macro).to eq(:has_many)
    end
  end
end
