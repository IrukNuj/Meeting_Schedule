class Schedule < ApplicationRecord
  has_many :absentees
  has_many :users, through: :absentees
end
