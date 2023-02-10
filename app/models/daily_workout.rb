class DailyWorkout < ApplicationRecord
  has_many :lifts
  accepts_nested_attributes_for :lifts

  validates :focus, presence: true
end
