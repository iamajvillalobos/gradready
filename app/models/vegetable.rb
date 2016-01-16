class Vegetable < ActiveRecord::Base
  validates :name, :color, :variety, :harvested_at, presence: true

  belongs_to :plantation
end
