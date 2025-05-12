class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :rating, presence: true
end
