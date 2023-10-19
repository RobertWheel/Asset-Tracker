class Device < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :employee, :optional => true
  has_and_belongs_to_many :categories
end
