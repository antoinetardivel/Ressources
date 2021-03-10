class Ressource < ApplicationRecord
  belongs_to :author
  belongs_to :category
  belongs_to :subcategory
end
