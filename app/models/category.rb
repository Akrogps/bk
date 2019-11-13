class Category < ApplicationRecord
  CATEGORIES = ['Italian', 'French', 'Belgian', 'Asian', 'American']

  has_many :categories_places, dependent: :destroy
  has_many :places, through: :categories_places

  validates :name, presence: true, inclusion: { in: CATEGORIES }
end
