class Device < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  has_and_belongs_to_many :softwares
end
