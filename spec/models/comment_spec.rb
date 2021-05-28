require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user1) { User.create(name: 'user1') }
  let(:article1) { Article.create(author_id: user1.id, text: 'This is my first article') }
  let(:comment) { Comment.create(user_id: user1.id, article_id: article1.id, content: 'This is the first comment') }

  it 'is not valid without a content' do
    comment.content = nil
    expect(comment).to_not be_valid
  end

  it 'is not valid without a user_id' do
    comment.user_id = nil
    expect(comment).to_not be_valid
  end

  it 'is not valid without a article_id' do
    comment.article_id = nil
    expect(comment).to_not be_valid
  end

  describe 'Associations' do
    it { expect(described_class.reflect_on_association(:user).macro).to eq(:belongs_to) }
    it { expect(described_class.reflect_on_association(:article).macro).to eq(:belongs_to) }
  end
end
