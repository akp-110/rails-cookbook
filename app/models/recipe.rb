class Recipe < ApplicationRecord
  has_many :bookmarks

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :rating, numericality: { in: 0..5 }, presence: true
end
