class CategoriesPlace < ApplicationRecord
  belongs_to :category
  belongs_to :place

  validates :category_id, uniqueness: { scope: :place_id }
end
