class Dish < ApplicationRecord
  CATEGORIES = ["antipasti", "primi piatti", "secondi", "contorni", "dolci", "bevande"]

  has_many  :order_dishes

  validates :name, :tagline, :description, :category, :price, presence: true
  validates :name, :tagline, :description, uniqueness: true
  validates :category, inclusion: { in: CATEGORIES } 
end
