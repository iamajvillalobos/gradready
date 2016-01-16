class Plantation < ActiveRecord::Base
  validates :name, presence: true
end
