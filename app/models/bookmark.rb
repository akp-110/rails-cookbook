class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :comment, length: { minimum: 6 }, presence: true
  validates :recipe_id, uniqueness: { scope: :category_id }
end
