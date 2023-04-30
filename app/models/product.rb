class Product < ApplicationRecord
  validates :name, presence: true
  validates :sku, presence: true
  validates :inventory_quantity, presence: true
  validates :inventory_updated_time, presence: true
  belongs_to :store
end