require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Category, type: :model do
  subject do
    described_class.new(name: 'Nkiruka',
                        priority: 1)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a priority' do
    subject.priority = nil
    expect(subject).to_not be_valid
  end

  context 'associations' do
    it 'should have many articles through organizations' do
      t = Category.reflect_on_association(:articles)
      expect(t.macro).to eq(:has_many)
    end

    it 'should have many organizations' do
      t = Article.reflect_on_association(:organizations)
      expect(t.macro).to eq(:has_many)
    end
  end
end
