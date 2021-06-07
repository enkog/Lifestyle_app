class Category < ApplicationRecord
  has_many :organizations
  has_many :articles, -> { order(id: 'asc') }, through: :organizations

  validates_presence_of :name
  validates_length_of :name, minimum: 3
  validates_presence_of :priority
  validates :priority, uniqueness: true, numericality: { in: 1..20 }
  validates :name, uniqueness: true

  def most_recent_article
    articles = self.articles.order(created_at: :desc)
    articles[0]
  end
end
