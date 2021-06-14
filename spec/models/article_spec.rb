require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Article, type: :model do
  let(:user1) { User.create(name: 'user1') }
  let(:article) { Article.create(author_id: user1.id, text: 'This is my first post', title: 'Article one') }

  it 'should have a title' do
    article.title = nil
    expect(article).to_not be_valid
  end

  it 'should have a text' do
    article.text = nil
    expect(article).to_not be_valid
  end

  it 'should have an author_id' do
    article.author_id = nil
    expect(article).to_not be_valid
  end

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
