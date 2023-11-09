class Device < ApplicationRecord
  belongs_to :manufacturer, :optional => true
  belongs_to :category, :optional => true
  belongs_to :employee, :optional => true
  has_and_belongs_to_many :categories
  def search_name
    name + " " + "(" + manufacturer.name + "/" + category.name + ")"
    end
end
