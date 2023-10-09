class Device < ApplicationRecord
  has_many :manufacturers
  has_many :categories
end
