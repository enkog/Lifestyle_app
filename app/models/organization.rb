class Organization < ApplicationRecord
  belongs_to :category
  belongs_to :article
  accepts_nested_attributes_for :category

  validates_presence_of :category
  validates_presence_of :article
end
