class CategoriesPlace < ApplicationRecord
  validates :category, uniqueness: { scope: :place }
end
