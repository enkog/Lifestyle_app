class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, foreign_key: :article_id
  has_many :voters, through: :votes, source: :user
  has_many :organizations, foreign_key: :article_id, inverse_of: :article
  has_many :categories, through: :organizations

  has_one_attached :image

  validates_presence_of :title
  validates_length_of :title, minimum: 3
  validates_presence_of :text
  validates_length_of :text, minimum: 10
  validates_presence_of :image
  validates_presence_of :author_id
end
