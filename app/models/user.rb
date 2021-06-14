class User < ApplicationRecord
  has_many :articles, foreign_key: :author_id, class_name: 'Article'
  has_many :votes, foreign_key: :user_id
  has_many :voted_articles, through: :votes, source: :article

  validates_presence_of :name
  validates_length_of :name, minimum: 3
  validates :name, uniqueness: true
end
