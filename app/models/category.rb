class Category < ApplicationRecord
  CATEGORIES = ['Italian', 'French', 'Belgian', 'Asian', 'American']

  has_many :categories_places, dependent: :delete_all
  has_many :places, through: :categories_places

  validates :name, presence: true, inclusion: { in: CATEGORIES }
end
