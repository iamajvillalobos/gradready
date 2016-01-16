class Plantation < ActiveRecord::Base
  validates :name, presence: true

  has_many :fruits
end
