require 'rails_helper'
require 'capybara/rspec'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Nkiruka')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe 'Associations' do
    it { expect(described_class.reflect_on_association(:articles).macro).to eq(:has_many) }
    it { expect(described_class.reflect_on_association(:votes).macro).to eq(:has_many) }
    it { expect(described_class.reflect_on_association(:voted_articles).macro).to eq(:has_many) }
  end
end
