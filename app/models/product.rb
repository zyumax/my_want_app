class Product < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :price, numericality: {only_integer: true}
end
