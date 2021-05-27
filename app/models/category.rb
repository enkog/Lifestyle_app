class Category < ApplicationRecord
  has_many :organizations, foreign_key: :category_id
  has_many :articles, -> { order(id: 'asc') }, through: :organizations

  validates_presence_of :name
  validates_length_of :name, minimum: 3
  validates_presence_of :priority
  validates :priority, uniqueness: true
  validates :name, uniqueness: true
end
