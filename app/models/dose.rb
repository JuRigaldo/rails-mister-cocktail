class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end
