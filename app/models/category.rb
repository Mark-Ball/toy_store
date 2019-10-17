class Category < ApplicationRecord
    has_many :toys_category
    has_many :toys, through: :toys_category
end
