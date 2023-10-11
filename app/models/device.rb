class Device < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :employee
  has_and_belongs_to_many :softwares
end
