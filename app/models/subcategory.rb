class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :ressources
end
