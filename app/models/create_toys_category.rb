class CreateToysCategory < ApplicationRecord
  belongs_to :toys
  belongs_to :categories
end
