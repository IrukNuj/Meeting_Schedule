class Schedule < ApplicationRecord
  has_many :absentees
  has_many :users, through: :absentees

  validates :date, presence: true, uniqueness: true

  before_create do
    schedule_date = Date.parse(date.to_s)
    self.date = Date.new(schedule_date.year, schedule_date.month, schedule_date.day)
  end
end
