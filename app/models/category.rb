class Category < ApplicationRecord
    has_many :ressources
    has_many :subcategories
    has_one_attached :image
end
