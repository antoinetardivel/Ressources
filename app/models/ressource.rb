class Ressource < ApplicationRecord
  belongs_to :author
  belongs_to :category
  belongs_to :subcategory
  has_one_attached :image

  self.per_page = 9
end