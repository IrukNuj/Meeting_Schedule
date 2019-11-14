class ScheduleUser < ApplicationRecord
  enum status: { absence: 0, late: 1 }
  belongs_to :user
  belongs_to :schedule
end
