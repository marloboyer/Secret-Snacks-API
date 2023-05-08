class Snack < ApplicationRecord
  has_many :reviews
  has_many :locations
  belongs_to :user
end
