class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient_id }, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail_id }
end
