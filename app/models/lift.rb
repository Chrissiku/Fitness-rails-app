class Lift < ApplicationRecord
  belongs_to :daily_workout

  lifts_attributes = %i[name sets reps]
  lifts_attributes.each do |attribute|
    validates attribute, presence: true
  end
end
