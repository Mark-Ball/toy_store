class Toy < ApplicationRecord
    has_many :toys_category
    has_many :categories, through: :toys_category
    belongs_to :user
    belongs_to :manufacturer
    has_one_attached :image
end