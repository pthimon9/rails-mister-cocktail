class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
