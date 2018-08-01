class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :address, :category, :name, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
