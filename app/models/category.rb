class Category < ApplicationRecord
    has_many :ressources
    has_many :subcategories
end
