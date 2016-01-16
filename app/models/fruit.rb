class Fruit < ActiveRecord::Base
  validates :name, :variety, :color, presence: true

  belongs_to :plantation
end
