class Store < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  has_many :products
end